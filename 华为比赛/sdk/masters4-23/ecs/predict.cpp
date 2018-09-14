#include "predict.h"
#include "get_data.h"
#include "forecast.h"
#include <string.h>
//#include "place.h"
#include <stdio.h>
#include "MyDateUtil.h"
#include "PlaceFlavor.h"
#include "Output.h"

using namespace std;


//��Ҫ��ɵĹ��������
void predict_server(char * info[MAX_INFO_NUM], char * data[MAX_DATA_NUM], int data_num, char * filename)
{
    Server server;                      //�����������
    Flavor flavor;                      //�����������
    TrainData transdata;                //����ѵ������
    server.getnum(info);                //��ȡ����������
    flavor.get_numtype(info);           //��ȡ���������
    transdata.get_data(data,data_num);  //��ȡѵ��������

    predict(info,data,data_num);


    PredictFlavorFormat flavorFormat = PredictFlavorFormat(flavor.numtype);
//    flavorFormat.num = flavor.numtype;

    for(int i=0;i<flavorFormat.num;++i)
    {
        flavorFormat.flavorInfoIndex[i].id = flavor.numFlavor[i][0];
        flavorFormat.flavorInfoIndex[i].cpu = flavor.numFlavor[i][1];
        flavorFormat.flavorInfoIndex[i].mem = flavor.numFlavor[i][2];
    }


    flavorFormat.adjust();
//    flavorFormat.display();
    PredictResult predictRst = PredictResult();

    for(int i=0;i<18;++i)
    {
        predictRst.nums[i] = predict_data[flavorFormat.flavorInfoIndex[i].id-1];
//        printf("i=%d,id=%d,num=%d,predict_data=%d\n",i,flavorFormat.flavorInfo[i].id,predictRst.nums[i],predict_data[i]);
    }

    int sumCpu = 0;
    int sumMem = 0;
    for(int i=0;i<18;++i)
    {
        sumCpu += predictRst.nums[i] * flavorFormat.flavorInfoIndex[i].cpu;
        sumMem += predictRst.nums[i] * flavorFormat.flavorInfoIndex[i].mem / 1024;
    }
    printf("sumCpu=%d,sumMem=%d\n",sumCpu,sumMem);
     //�������ֽ�Ԥ����ͨ���ӿڣ��洢�����Ҷ���Ķ����У�ʹ���ҿ��԰��Ҷ���Ķ�����в���
    //�����ǵ��÷����㷨���з���

    int chooseServerType =0;
    if (sumMem / (double)sumCpu >= 3.0)
    {
        chooseServerType = 1;
    }
    else if (sumMem / (double)sumCpu <= 1.8)
    {
        chooseServerType = 2;
    }
    else
    {
        chooseServerType = 0;
    }

    PhysicsServerFormat serverFormat = PhysicsServerFormat();

    //�����õ�һ������
    serverFormat.cpu = server.data[chooseServerType][0];
    serverFormat.mem = server.data[chooseServerType][1];
    serverFormat.disk = server.data[chooseServerType][2];
    serverFormat.display();

    PlaceManager placeManager = PlaceManager(&serverFormat,&flavorFormat,&predictRst,flavorFormat.num);
    //���з���
    placeManager.placeAuto();

//    �ļ������
    string str_out;
    char buf[10];
    sprintf(buf,"%d",predict_total);           //��������������
    str_out = str_out + buf;

    str_out = str_out + "\n";
    for(int i=0; i<flavor.numtype; i++){
        str_out = str_out + "flavor";
        sprintf(buf,"%d",flavor.numFlavor[i][0]);   //���������ͺ�
        str_out = str_out + buf + " ";
        sprintf(buf,"%d",predict_data[flavor.numFlavor[i][0]-1]);              //�����Ӧ�ͺŵ�����
        str_out = str_out + buf + "\n";
    }
    str_out = str_out + "\n";
    char serverTotal[20];
    string type = server.Type[chooseServerType];
    sprintf(serverTotal,"%d",placeManager.getServerSum());
        str_out +=type +" "+serverTotal;
        string serverPlacedTotalStr = "";
        int serverId = 1;
        int i=0;
        for(list<PlaceMethod *>::iterator it = placeManager.methods.begin(); it != placeManager.methods.end(); ++ it)
        {
            string serverPlacedStr = "";
            PlaceMethod *method= (*it);

            for (int n = 0; n < placeManager.flavorNum; ++n)
            {
                if (method->placedNums[n] == 0)
                {
                    continue;
                }
                char flavorNumStr[20];
                sprintf(flavorNumStr," flavor%d %d",placeManager.flavorInfos->flavorInfo[n].id,method->placedNums[n]);
                serverPlacedStr += string(flavorNumStr);
            }
            for (int j=0; j < placeManager.methodsNum[i]; ++j)
            {
                char serverIdStr[5];
                sprintf(serverIdStr,"%d",serverId);
                ++ serverId;
                serverPlacedTotalStr += string("\n") +type+"-"+serverIdStr + serverPlacedStr ;
            }
            ++i;
        }
        str_out += serverPlacedTotalStr;


    cout << "output:" << endl;
    cout << str_out << endl;

    char str1[20000];
    strcpy(str1, str_out.c_str());

	 //��Ҫ���������
	char * result_file = (char *)str1;


	// ֱ�ӵ�������ļ��ķ��������ָ���ļ���(ps��ע���ʽ����ȷ�ԣ�����н⣬��һ��ֻ��һ�����ݣ��ڶ���Ϊ�գ������п�ʼ���Ǿ�������ݣ�����֮����һ���ո�ָ���)
	write_result(result_file, filename);
}



