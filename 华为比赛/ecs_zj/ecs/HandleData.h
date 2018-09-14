#ifndef HANDLE_DATA_H
#define HANDLE_DATA_H

#include <stdio.h>
#include <memory.h>
#include <stdlib.h>
#include <string>

#include "MyDateUtil.h"
using namespace std;

class PhysicsServerFormat
{
public:
    // �����������Ϣ
    int cpu;
    int mem;
    int disk;

    void display()
    {
        printf("\n\nClass PhysicsServerFormat:\n");
        printf("�����������Ϣ��\n");
        printf("  CPU=%d\n",cpu);
        printf("  MEM=%d\n",mem);
        printf("  DISK=%d\n",disk);
    }
};

class FlavorFormat
{
public:
    int id=0;
    int cpu=0;
    int mem=0;
    int disk=0;
    void display()
    {
        printf("\n\nFlavor info:\n");
        printf("  id=%d\n",id);
        printf("  cpu=%d\n",cpu);
        printf("  mem=%d\n",mem);
        printf("  disk=%d\n",disk);
    }
    static int compare(const void *a, const void *b)
    {
        FlavorFormat * flavor1 =(FlavorFormat*)a;
        FlavorFormat * flavor2 =(FlavorFormat*)b;
        return flavor1->id - flavor2->id;  //�� id ��С��������
    }
};

class PredictFlavorFormat
{
public:
    int num;
    FlavorFormat flavorInfoIndex[15];//�����±��Ӧ��ϵ�洢�����ڶ�������
    FlavorFormat flavorInfo[15];//��ǰ�棬���±�û��ֱ�ӹ�ϵ�����ں�������
    int times[15]; //��δ�õ�
    int mapToId[15]; //��ǰ�棬�洢����flavorId
    int mapToIndex[15];//�ڶ�ӦflavorId-1��λ���ϣ��洢������ǰ��ʱ��mapToId�����±�ֵ���������Ͽ�������
    void adjust(PhysicsServerFormat *serverFormat)
    {
        // ��������ݷ��� flavorInfoIndex �У�ʹ�ñ�����������Ԥ������������������Ҫ�Ӵ�С�֣���
        // �ŵ�flavorInfo�У��Լ��������⼸�������ֵ��
        qsort(flavorInfoIndex,15,sizeof(FlavorFormat),FlavorFormat::compare);
        int index = 0;
        for (int i=0; i<15; ++i)
        {
            if (this->flavorInfoIndex[i].id == 0)
            {
                continue;
            }
            this->flavorInfo[index].id = this->flavorInfoIndex[i].id;
            this->flavorInfo[index].cpu = this->flavorInfoIndex[i].cpu;
            this->flavorInfo[index].mem = this->flavorInfoIndex[i].mem;
            this->mapToId[index] = this->flavorInfoIndex[i].id;
            this->mapToIndex[this->flavorInfoIndex[i].id -1] = index;
            int ts1 = serverFormat->cpu / this->flavorInfo[index].cpu;
            int ts2 = serverFormat->mem / this->flavorInfo[index].mem;
            times[index] =  ts1 <= ts2 ? ts1:ts2;

            ++index;

        }
    }
    void display()
    {
        printf("\n\nClass PredictFlavorFormat:\n");
        for (int i=0; i < this->num; ++i)
        {
            printf("i=%d,id=%d,CPU=%d,MEM=%d\n",i,this->flavorInfo[i].id,this->flavorInfo[i].cpu,this->flavorInfo[i].mem);
        }
    }
};


// input�ļ�����Ϣ
class InputData
{
private:
    void readPhysicsServerInfo(char * const info)
    {
        sscanf(info,"%d %d %d",&(this->physicsServerInfo.cpu),&(this->physicsServerInfo.mem),&(this->physicsServerInfo.disk));
        this->physicsServerInfo.mem *= 1024;
    }
    void readFlavorInfo(char * const info)
    {
        int flavorId,cpu,mem;
        sscanf(info,"flavor%d %d %d",&flavorId,&cpu,&mem);
        this->predictFlavorInfo.flavorInfoIndex[flavorId-1].id = flavorId;
        this->predictFlavorInfo.flavorInfoIndex[flavorId-1].cpu = cpu;
        this->predictFlavorInfo.flavorInfoIndex[flavorId-1].mem = mem;
    }
    void readPredictFlavorInfo(char ** const info)
    {
        sscanf(info[2],"%d",&(this->predictFlavorInfo.num));
        for (int i=0; i < this->predictFlavorInfo.num; ++i)
        {
            this->readFlavorInfo(info[3+i]);
        }
        this->predictFlavorInfo.adjust(&(this->physicsServerInfo));
    }
    void readOptimalizeInfo(char * const info)
    {
        char obj[4];
        sscanf(info,"%c%c%c",&obj[0],&obj[1],&obj[2]);
        obj[3] = '\0';
        this->optimalizeObject = string(obj);
    }
    void readPredictDateInfo(char ** const info)
    {
        int position = this->predictFlavorInfo.num + 6;
        int year,month,day;
        sscanf(info[position],"%d-%d-%d",&year,&month,&day);
        MyDate predictBeginDay = MyDate(year,month,day);
        sscanf(info[position + 1],"%d-%d-%d",&year,&month,&day);
        MyDate predictEndDay = MyDate(year,month,day);
        this->predictDaysLength = MyDate::interval(&predictBeginDay,&predictEndDay);
    }
    void readInputData(char ** const info)
    {
        this->readPhysicsServerInfo(info[0]);
        this->readPredictFlavorInfo(info);
        this->readOptimalizeInfo(info[this->predictFlavorInfo.num + 4]);
        this->readPredictDateInfo(info);
    }
public:
    PhysicsServerFormat physicsServerInfo = PhysicsServerFormat();
    //�����
    PredictFlavorFormat predictFlavorInfo = PredictFlavorFormat();
    //�Ż�Ŀ��
    string optimalizeObject;
    //Ԥ��ʱ����
    int predictDaysLength;
    InputData(char ** const info)
    {
        readInputData(info);
    }

    void display()
    {
        printf("\n\nClass InputData\n");
        printf("�����������Ϣ:\n");
        printf("CPU=%d,MEM=%d,DISK=%d\n",this->physicsServerInfo.cpu,this->physicsServerInfo.mem,this->physicsServerInfo.disk);
        printf("��Ԥ���������Ϣ��\n");
        printf("������%d\n",this->predictFlavorInfo.num);
        for (int i=0; i < this->predictFlavorInfo.num; ++i)
        {
            printf("i=%d,id=%d,CPU=%d,MEM=%d\n",i,this->predictFlavorInfo.flavorInfo[i].id,this->predictFlavorInfo.flavorInfo[i].cpu,this->predictFlavorInfo.flavorInfo[i].mem);
        }
        printf("�Ż�Ŀ�꣺%s\n",this->optimalizeObject.c_str());
        printf("ʱ���ȣ�%d\n",this->predictDaysLength);
        printf("indicate:\n");
        for (int i=0; i < this->predictFlavorInfo.num ; ++i)
        {
            printf("%d  ",this->predictFlavorInfo.mapToId[i]);
        }
        printf("\n");
    }
};

// ��ʷ����
class HistoryData
{
private:
    int flavorNum = 15;
    int maxLength = 10000;
    void handLine(int flavorData[]);
    void readLine(char *line,int flavorData[]);
public:
//56498c56-af45	flavor15	2015-01-02 22:22:06

    int trainData[15][10000]; //���±��Ӧ��ϵ�������
    int startDays = 0;
    int historyDaysLength = 0;
    void display(int len=10);
    HistoryData(char ** const data, int data_num)
    {
        this->readTrainData(data,data_num);
    }
    void readTrainData(char ** const data, int data_num);
    int getData(int flavorId,int row)
    {
        return this->trainData[flavorId][row];
    }
};

#endif // HANDLE_DATA_H
