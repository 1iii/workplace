/*
 * iec104decode.h
 *
 *  Created on: 2016��12��24��
 *      Author: gyw
 */

#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/in.h>
#include <linux/fs.h>
#include <asm/uaccess.h>

#include "iec104decode.h"

#define DEBUG 1

#define IEC104_PROTOCOL_ID 								0x68
#define IEC104_TRANS_PROTO_LEN_SIZE                     2

//IEC104ͷ
typedef struct _iec104_header
{
    /* APCI Header */
	__u8  protocol_id;
	__u8  length;
    __u8  control_id_1;
    __u8  control_id_2;
    __u8  control_id_3;
    __u8  control_id_4;
} iec104_header_t;

//IEC104ͷ+ASDU
typedef struct _iec104_data_t{
    iec104_header_t header;
    __u8            asdu[1];
}iec104_data_t;

//ASDU
typedef struct _iec104_asdu_t{

    __u8   type;
    __u8   num;
    __u8   reason1;
    __u8   reason2;
    __u16  addr;
    __u8   info[1];
} iec104_asdu_t;

//asdu��Ϣ�嵥Ԫ
typedef struct _asdu_info_t{
    __u16 addr;
    __u8  element[1];
}asdu_info_t;


//****************************************************************************
//��������Iec104ControlUnitCheck(__u8 *app_data,__u16 app_len)
//���ܣ�IEC104��������
//������__u8 *app_data,__u16 app_len
//����ֵ��IEC104_CONTROL_UNIT_OK IEC104_CONTROL_UNIT_FAIL
//���ߣ�gyw
//���ڣ�2016��02��13��
//��ע��
//****************************************************************************
static int Iec104ControlUnitCheck(__u8 *app_data,__u16 app_len)
{
	iec104_header_t *header = (iec104_header_t *)app_data;

    //�ж��Ƿ�ΪI��ʽ���������I��ʽ�µĸ���λ����ĺϷ���
	if( (header->control_id_1 | 0xfe) == 0xfe){
        return IEC104_CONTROL_UNIT_OK;
	}

    // �ж��Ƿ�ΪS��ʽ���������S��ʽ�µĸ���λ����ĺϷ���
	if( (header->control_id_1 | 0xfc) == 0xfd){
        //��һ����λ����ӦΪ0000 0001
        if( (header->control_id_1 | 0x00) != 0x01){
            return IEC104_CONTROL_UNIT_FAIL;
        }

        //�ڶ�����λ����ӦΪ0000 0000
        if((header->control_id_2 | 0x00) != 0x00){
            return IEC104_CONTROL_UNIT_FAIL;
        }

        return IEC104_CONTROL_UNIT_OK;
	}

	// �ж��Ƿ�ΪU��ʽ���������U��ʽ�µĸ���λ����ĺϷ���
    if( (header->control_id_1 | 0xfc) == 0xff){
        //U��ʽ�ĵ�һ����λ����ֻ������01000011 10000011 00010011 00100011 00000111 00001011
        if(!((header->control_id_1 == IEC104_U_FUNC_TESTER) || (header->control_id_1 == IEC104_U_FUNC_TESTER_ACK)
             || (header->control_id_1 == IEC104_U_FUNC_STOPDT) || (header->control_id_1 == IEC104_U_FUNC_STOPDT_ACK)
             || (header->control_id_1 == IEC104_U_FUNC_STARTDT) || (header->control_id_1 == IEC104_U_FUNC_STARTDT_ACK))){
                return IEC104_CONTROL_UNIT_FAIL;
             }

        //�ڶ�����λ����ӦΪ0000 0000
        if((header->control_id_2 | 0x00) != 0x00){
            return IEC104_CONTROL_UNIT_FAIL;
        }

        //��������λ����ӦΪ0000 0000
        if((header->control_id_3 | 0x00) != 0x00){
            return IEC104_CONTROL_UNIT_FAIL;
        }

        //���ĸ���λ����ӦΪ0000 0000
        if((header->control_id_4 | 0x00) != 0x00){
            return IEC104_CONTROL_UNIT_FAIL;
        }

	    return IEC104_CONTROL_UNIT_OK;
	}

	//��������ʧ��
	return IEC104_CONTROL_UNIT_FAIL;
}

//****************************************************************************
//��������Iec104LenCheck(__u8 *app_data,__u16 app_len)
//���ܣ�IEC104���ݰ����ȼ��
//������__u8 *app_data,__u16 app_len
//����ֵ��IEC104_LEN_OK IEC104_LEN_FAIL
//���ߣ�gyw
//���ڣ�2016��12��24��
//��ע��
//****************************************************************************
static int Iec104LenCheck(__u8 *app_data,__u16 app_len)
{
	iec104_header_t *header = (iec104_header_t *)app_data;

	if( header->length == (app_len - IEC104_TRANS_PROTO_LEN_SIZE))
	{
		// �ж��Ƿ�ΪS��ʽ����U��ʽ
		if(((header->control_id_1 | 0xfc) == 0xfd) || ((header->control_id_1 | 0xfc) == 0xff)){
			if(header->length != (IEC104_MIN_LEN - IEC104_TRANS_PROTO_LEN_SIZE) || app_len != IEC104_MIN_LEN){
				return IEC104_LEN_FAIL;
			}
		}
		return IEC104_LEN_OK;
	}
	else
	{
		return IEC104_LEN_FAIL;
	}
}


//****************************************************************************
//��������Iec104LenCheck(__u8 *app_data,__u16 app_len)
//���ܣ�IEC104Ӧ�����ݷ���120Ԫ���
//������__u8 *app_data,__u16 app_len
//����ֵ��IEC104_ASDU_OK IEC104_ASDU_FAIL
//���ߣ�gyw
//���ڣ�2016��2��13��
//��ע��
//****************************************************************************
static int Iec104ASDUCheck(__u8 *app_data,__u16 app_len, struct xt_iec104_mtinfo *info)
{
    iec104_header_t *header;

    /* Lay the header struct over the payload */
    header = (iec104_header_t *) app_data;

    //�ж��Ƿ�ΪI��ʽ��ֻ��I��ʽ��Ҫ����Ӧ�����ݷ���Ԫ���
    if( !((header->control_id_1 | 0xfe) == 0xfe) ){
        return IEC104_ASDU_OK;
    }

    //��ȡIEC104��Ϣ��
    iec104_data_t *data_t = (iec104_data_t *) app_data;

    //��ȡIEC104ASDU
    iec104_asdu_t *asdu_t = (iec104_asdu_t *)(data_t->asdu);

    //��ȡASDU���ͱ�ʶ
    __u8 type = asdu_t->type;

    //�ж����ͱ�ʶ
    switch(type){
        case IEC104_C_SC_NA_1: break;
        case IEC104_C_DC_NA_1: break;
        case IEC104_C_RC_NA_1: break;
        case IEC104_C_SE_NA_1: break;
        case IEC104_C_SE_NB_1: break;
        case IEC104_C_SE_NC_1: break;
        case IEC104_C_BO_NA_1: break;
        case IEC104_C_SC_TA_1: break;
        case IEC104_C_DC_TA_1: break;
        case IEC104_C_RC_TA_1: break;
        case IEC104_C_SE_TA_1: break;
        case IEC104_C_SE_TB_1: break;
        case IEC104_C_SE_TC_1: break;
        case IEC104_C_BO_TA_1: break;
        case IEC104_M_EI_NA_1: break;
        case IEC104_C_IC_NA_1: break;
        case IEC104_C_CI_NA_1: break;
        case IEC104_C_RD_NA_1: break;
        case IEC104_C_CS_NA_1: break;
        case IEC104_C_RP_NA_1: break;
        case IEC104_C_TS_TA_1: break;
        case IEC104_P_ME_NA_1: break;
        case IEC104_P_ME_NB_1: break;
        case IEC104_P_ME_NC_1: break;
        case IEC104_P_AC_NA_1: break;
        case IEC104_F_FR_NA_1: break;
        case IEC104_F_SR_NA_1: break;
        case IEC104_F_SC_NA_1: break;
        case IEC104_F_LS_NA_1: break;
        case IEC104_F_AF_NA_1: break;
        case IEC104_F_SG_NA_1: break;
        case IEC104_F_DR_NA_1: break;
        default:
            #ifdef DEBUG
                printk("iec104 type(%d) check Failed\n", type);
            #endif
            return IEC104_ASDU_FAIL;
    }

    //��ȡASDU����ԭ��
    __u8 reason1 = asdu_t->reason1;

    //�жϴ���ԭ��(ֻ�жϺ�6120λ reason1 & 00111111, ���Ҳ��������Ĵ���ԭ��ͨ��)
    switch(reason1&0x3F){
        case IEC104_REASON_per     : break;
        case IEC104_REASON_Back    : break;
        case IEC104_REASON_spont   : break;
        case IEC104_REASON_init    : break;
        case IEC104_REASON_req     : break;
        case IEC104_REASON_act     : break;
        case IEC104_REASON_actcon  : break;
        case IEC104_REASON_deact   : break;
        case IEC104_REASON_deactcon: break;
        case IEC104_REASON_actterm : break;
        case IEC104_REASON_retrem  : break;
        case IEC104_REASON_retloc  : break;
        case IEC104_REASON_file    : break;
        case IEC104_REASON_introgen: break;
        case IEC104_REASON_intro1  : break;
        case IEC104_REASON_intro2  : break;
        case IEC104_REASON_intro3  : break;
        case IEC104_REASON_intro4  : break;
        case IEC104_REASON_intro5  : break;
        case IEC104_REASON_intro6  : break;
        case IEC104_REASON_intro7  : break;
        case IEC104_REASON_intro8  : break;
        case IEC104_REASON_intro9  : break;
        case IEC104_REASON_intro10 : break;
        case IEC104_REASON_intro11 : break;
        case IEC104_REASON_intro12 : break;
        case IEC104_REASON_intro13 : break;
        case IEC104_REASON_intro14 : break;
        case IEC104_REASON_intro15 : break;
        case IEC104_REASON_intro16 : break;
        case IEC104_REASON_reqcogcn: break;
        case IEC104_REASON_reqco1  : break;
        case IEC104_REASON_reqco2  : break;
        case IEC104_REASON_reqco3  : break;
        case IEC104_REASON_reqco4  : break;
        default:
            #ifdef DEBUG
                printk("iec104 reason(%d) check Failed\n", reason1&0x3F);
            #endif
            return IEC104_ASDU_FAIL;
    }

    //�жϹ�����ַ
    __u16 commAddr = asdu_t->addr;

    if(commAddr == 0){
        #ifdef DEBUG
            printk("iec104 commAddr(%d) check Failed\n", commAddr);
        #endif
        return IEC104_ASDU_FAIL;
    }
    if(commAddr < info->min_addr || commAddr > info->max_addr){
        #ifdef DEBUG
            printk("iec104 commAddr(%d) check Failed\n", commAddr);
        #endif
        return IEC104_ASDU_FAIL;
    }

    return IEC104_ASDU_OK;

}

//****************************************************************************
//��������IEC104Decode(char *app_data, __u16
//���ܣ�IEC104��Ȱ�����
//������char *app_data, __u16 app_len, __u8 flags
//����ֵ��IEC104_FAIL IEC104_OK
//���ߣ�gyw
//���ڣ�2016��12��24��
//��ע��
//****************************************************************************
int IEC104Decode(char *app_data, __u16 app_len, __u8 flags, const struct xt_iec104_mtinfo *info)
{

	iec104_header_t *header;

    if (app_len < IEC104_MIN_LEN)
        return IEC104_FAIL;

    /* Lay the header struct over the payload */
    header = (iec104_header_t *) app_data;

    //��ʼ�ַ���Э���ʶ�������
    if (header->protocol_id != IEC104_PROTOCOL_ID)
    {
		#ifdef DEBUG
    		printk("iec104_protocol_id check FAIL\n");
		#endif

        return IEC104_FAIL;
    }

	#ifdef DEBUG
    	printk("iec104_protocol_id check OK\n");
	#endif

    //��������
    if(Iec104ControlUnitCheck(app_data,app_len) != IEC104_LEN_OK)
	{
		#ifdef DEBUG
			printk("iec104_control_unit check FAIL\n");
		#endif

		return IEC104_FAIL;
	}
	#ifdef DEBUG
		printk("iec104_control_unit check OK\n");
	#endif

    //���ȼ��
	if(Iec104LenCheck(app_data,app_len) != IEC104_LEN_OK)
	{
		#ifdef DEBUG
			printk("iec104_len check FAIL\n");
		#endif

		return IEC104_FAIL;
	}
	#ifdef DEBUG
		printk("iec104_len check OK\n");
	#endif

	//Ӧ�����ݷ���Ԫ���
	if(Iec104ASDUCheck(app_data, app_len, info) != IEC104_ASDU_OK){
        #ifdef DEBUG
			printk("iec104_asdu check FAIL\n");
		#endif

		return IEC104_FAIL;
	}
	#ifdef DEBUG
		printk("iec104_asdu check OK\n");
	#endif

    return IEC104_OK;
}
