#include "predict.h"
#include "handle_data.h"
#include "forecast.h"
//#include "place.h"
#include <stdio.h>
#include "MyDateUtil.h"
#include "PlaceFlavor.h"
#include "Output.h"


//��Ҫ��ɵĹ��������
void predict_server(char * info[MAX_INFO_NUM], char * data[MAX_DATA_NUM], int data_num, char * filename)
{
    traindata traininfo;
    inputdata serverAndflavor;
    traininfo.hanle_traindata(data, data_num); //ѵ������
    serverAndflavor.handle_inputdata(info);//�����ļ�����
    forecast(info, data, data_num);

    //���沿���ҵķ��䷽��
    PhysicsServerFormat serverFormat = PhysicsServerFormat();

    //�����������Ϣ�Ľӿ�
    serverFormat.cpu = serverAndflavor.serverCPU;
    serverFormat.mem = serverAndflavor.serverMEM;
    serverFormat.disk = serverAndflavor.serverDisk;

//    serverFormat.display();

    PredictFlavorFormat flavorFormat = PredictFlavorFormat();

    //���������Ľӿ�
    flavorFormat.num = serverAndflavor.numtype;
    for (int i=0; i <15; ++i)
    {

        flavorFormat.flavorInfoIndex[i].id = serverAndflavor.flavorinfo[i][0];
        flavorFormat.flavorInfoIndex[i].cpu = serverAndflavor.flavorinfo[i][1];
        flavorFormat.flavorInfoIndex[i].mem = serverAndflavor.flavorinfo[i][2];
    }

    flavorFormat.adjust(&serverFormat);//�˺����������
//    flavorFormat.display();

    PredictResult predictRst = PredictResult();

    //Ԥ�����Ľӿ�
    for (int i=0; i <15; ++i)
    {
        predictRst.nums[i] = predict_flavor1[flavorFormat.flavorInfo[i].id-1];
    }
//    predictRst.display();


    //�������ֽ�Ԥ����ͨ���ӿڣ��洢�����Ҷ���Ķ����У�ʹ���ҿ��԰��Ҷ���Ķ�����в���
    //�����ǵ��÷����㷨���з���
    PlaceManager placeManager = PlaceManager(&serverFormat,&flavorFormat,&predictRst,flavorFormat.num);
    //���з���
    placeManager.placeAuto(serverAndflavor.target == "CPU");
//    placeManager.display();

    //�õ��ַ������
    OutputUtils output = OutputUtils(&placeManager);
    string str = output.getStr();
    //��ӡ�ҵķ��䷽��
    printf("\nzj:\n\n");
    printf("%s\n",str.c_str());

    char buff[65535];
    strcpy(buff,str.c_str());


//     ��Ҫ���������
    char * result_file = buff;

    // ֱ�ӵ�������ļ��ķ��������ָ���ļ���(ps��ע���ʽ����ȷ�ԣ�����н⣬��һ��ֻ��һ�����ݣ��ڶ���Ϊ�գ������п�ʼ���Ǿ�������ݣ�����֮����һ���ո�ָ���)
    write_result(result_file, filename);
}
