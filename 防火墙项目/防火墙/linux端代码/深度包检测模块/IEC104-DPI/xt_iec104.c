/*
 * xt_iec104.c
 *
 *  Created on: 2016��12��24��
 *      Author: gyw
 */


#include <linux/module.h>
#include <linux/skbuff.h>
#include <linux/ip.h>
#include <linux/tcp.h>
#include <linux/ipv6.h>
#include <linux/netfilter/x_tables.h>
#include <linux/types.h>
#include <linux/netfilter.h>
#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/netfilter_ipv4.h>
#include <linux/moduleparam.h>
#include <linux/netfilter_ipv4/ip_tables.h>
#include <linux/init.h>
#include <linux/inet.h>
#include <linux/in.h>
#include <linux/types.h>
#include <net/tcp.h>

#include "iec104decode.h"
#include "general_api.h"

#define  DEBUG  1

#define REQ_FOR_CONNECTION	1
#define RES_CONNECTION		1
#define ESTABLISHED			1

#define IEC104_PORT	2404

#define FROM_CLIENT_FLAG		0
#define FROM_SERVER_FLAG		1

#define NIPQUAD(addr) \
((unsigned char *)&addr)[0], \
((unsigned char *)&addr)[1], \
((unsigned char *)&addr)[2], \
((unsigned char *)&addr)[3]


static bool
IEC104_mt4(const struct sk_buff *skb, struct xt_action_param *par)
{
    #ifdef DEBUG
	printk("\n=========IEC104 DPI BEGIN=========\n");
    #endif

	char *p_data;
	__be32 sip, dip;
	__u16 sport,dport;
	__u8 data_src_flag;
	__u16 app_len = 0;//Ӧ�ò����ݳ���
	char *data_start;//Ӧ�ò�������ʼλ��
	__u16 total_len = 0;

	//iptable���õĲ�����Ϣ
	const struct xt_iec104_mtinfo *info = par->matchinfo;

	if(!skb)
		return false;

	sip = GetSrcIp(skb);
	dip= GetDstIp(skb);
	//�ж����ݰ��Ƿ�ΪTCP���ݰ�
	if( !IsTcpPacket(skb))
		return false;

    __u16 iphdr_len =  ip_hdrlen(skb);
	skb_pull(skb,iphdr_len);
    skb_reset_transport_header(skb);

	//�ж�TCP���ݰ��˿��Ƿ�Ϊ2404
	sport = GetSrcPort(skb);
	dport = GetDstPort(skb);
	if(sport != htons(IEC104_PORT) && dport != htons(IEC104_PORT)){
        #ifdef DEBUG
            printk("IEC104 decode: IEC104 tcp port check!!! FAILED!!! \n");
        #endif

        return false;
	}

	#ifdef DEBUG
        printk("IEC104 decode: IEC104 tcp port check!!! SUCCESS!!! \n");
    #endif


	//������Ҫ�޸ģ���Ҫʵ�� �ж�״̬λ�����Ϊ������Լ�Ӧ�����ֱ��ͨ�������Ϊ���ݰ�����Ҫ������Ȱ�����
	//�ж�TCP���ݰ�״̬��
	//���ΪPSH����λ���������Ȱ�����;
	if( !IsTcpFlagPshSet(skb) ){
        #ifdef DEBUG
    		printk("IEC104 decode: no app data\n");
    	    printk("================end==============\n");
		#endif
        return true;
	}

	//�ж������ǿͻ������ݻ��Ƿ�����������
	if(sport == htons(IEC104_PORT))
		data_src_flag = FROM_CLIENT_FLAG;
	else if(dport == htons(IEC104_PORT))
		data_src_flag = FROM_SERVER_FLAG;

	//���Ի�skb�����IP��Ƭ����
	if(skb_is_nonlinear(skb))
	{
		if(skb_linearize(skb) != 0){
            #ifdef DEBUG
                printk(KERN_INFO"skb_linearize failed.\n");
            #endif
		}
	}

	//��ȡӦ�ò����ݳ���
	app_len = GetAppDataLength(skb);

	//��ȡӦ�ò���ʼλ��
	data_start = GetAppData(data_start, skb);

	//��ȡ�����ܳ���
	total_len = (skb->len - skb->data_len);

	#ifdef DEBUG
	//��ӡӦ�ò�����
	printk("app_data_len=%d, total_data_len=%d\n", app_len, total_len);
	printk("Packet for source address: %d.%d.%d.%d\nPacket for destination address: %d.%d.%d.%d\n", NIPQUAD(sip), NIPQUAD(dip));
	printk("app_data: ");

    __u16 i;
    p_data = data_start;
	for(i = 0; i < app_len; i++)
	{
		printk("%02x ", (__u8)*p_data);
		p_data++;
	}

    #endif

	#ifdef DEBUG
		printk("\n*********IEC104 DPI********\n");
	#endif

	if ( IEC104Decode(data_start, app_len, data_src_flag, info) == IEC104_FAIL)
	{
		#ifdef DEBUG
			printk("IEC104 decode: not IEC104 protocol !!! Failed!!! \n");
			printk("================end==============\n");
		#endif

		return false;
	}
    else
    {
		#ifdef DEBUG
    		printk("IEC104 decode: IEC104 protocol !!! Success!!! \n");
    	    printk("================end==============\n");
		#endif

        skb_push(skb,iphdr_len);
        skb_reset_transport_header(skb);
    	return true;
    }
}

static struct xt_match IEC104_mt_reg __read_mostly = {
		.name      = "iec104",
		.revision  = 1,
		.family    = NFPROTO_IPV4,
		.match     = IEC104_mt4,
		.matchsize = sizeof(struct xt_iec104_mtinfo),
		.me        = THIS_MODULE,
};

static int __init IEC104_mt_init(void)
{
	#ifdef DEBUG
		printk("register match successed\n");
	#endif
	return xt_register_match(&IEC104_mt_reg);
}

static void __exit IEC104_mt_exit(void)
{
	#ifdef DEBUG
		printk("unregister match successed\n");
	#endif
	xt_unregister_match(&IEC104_mt_reg);
}

module_init(IEC104_mt_init);
module_exit(IEC104_mt_exit);
MODULE_LICENSE("GPL");
MODULE_AUTHOR("GYW <nicai@budao.com>");
MODULE_DESCRIPTION("iptables:IEC104 detection");
MODULE_ALIAS("ipt_IEC104");
MODULE_ALIAS("ip6t_IEC104");



