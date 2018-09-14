#ifndef HANDLE_DATA_H
#define HANDLE_DATA_H

#include <stdio.h>
#include <memory.h>
#include <stdlib.h>
#include <string>
#include "get_data.h"
#include "forecast.h"
using namespace std;

class PhysicsServerFormat
{
public:
    // �����������Ϣ
    int cpu;
    int mem;
    int disk;
    double rates = 1; // ��
    int type;
    char name[20];

    PhysicsServerFormat()
    {
        memset(name,0,sizeof(char) * 20);
    }

    const int largeMemType = 2;
    const int generalType = 1;
    const int largeCpuType = 0;
    /**
        type == 1  ����
        type == 2 ���ڴ�
        type == 0 ��CPU
    **/
    bool isGeneralType()
    {
        return this->type == this->generalType;
    }

    bool isLargeMemType()
    {
        return this->type == this->largeMemType;
    }

    bool isLargeCpuType()
    {
        return this->type == this->largeCpuType;
    }

    int getType()
    {
        return this->type;
    }

    static int compare(const void *a, const void *b)
    {
        PhysicsServerFormat * server1 =(PhysicsServerFormat*)a;
        PhysicsServerFormat * server2 =(PhysicsServerFormat*)b;
        return server1->rates > server2->rates;  //�� rates ��С��������
    }

    void display()
    {
        printf("\n\nClass PhysicsServerFormat:\n");
        printf("�����������Ϣ��\n");
        printf("  CPU=%d\n",cpu);
        printf("  MEM=%d\n",mem);
        printf("  DISK=%d\n",disk);
        printf("  rates=%f\n",rates);
        printf("  type=%d\n",type);
        printf("  name=%s\n",name);
    }
};

class PhysicsServerManage
{
public:
    PhysicsServerManage()
    {

    }
    PhysicsServerFormat serverInfos[3];
    void adjust()
    {
        for (int i=0;i<3; ++i)
        {
            this->serverInfos[i].rates = this->serverInfos[i].mem / 1024.0 / this->serverInfos[i].cpu;
        }
        qsort(serverInfos,3,sizeof(PhysicsServerFormat),PhysicsServerFormat::compare);
        this->serverInfos[0].type = this->serverInfos[0].largeCpuType;
        this->serverInfos[1].type = this->serverInfos[1].generalType;
        this->serverInfos[2].type = this->serverInfos[2].largeMemType;
    }
    void display()
    {
        for (int i=0;i<3;++i)
        {
            this->serverInfos[i].display();
        }
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
    FlavorFormat flavorInfoIndex[18];//�����±��Ӧ��ϵ�洢�����ڶ�������
    FlavorFormat flavorInfo[18];//��ǰ�棬���±�û��ֱ�ӹ�ϵ�����ں�������
    PredictFlavorFormat(int num)
    {
        this->num = num;
    }
    void adjust()
    {
        // ��������ݷ��� flavorInfoIndex �У�ʹ�ñ�����������Ԥ������������������Ҫ�Ӵ�С�֣���
        // �ŵ�flavorInfo�У��Լ��������⼸�������ֵ��
        qsort(flavorInfoIndex,this->num,sizeof(FlavorFormat),FlavorFormat::compare);

        int index = 0;
        for (int i=0; i<this->num; ++i)
        {
            if (this->flavorInfoIndex[i].id == 0)
            {
                continue;
            }
            this->flavorInfo[index].id = this->flavorInfoIndex[i].id;
            this->flavorInfo[index].cpu = this->flavorInfoIndex[i].cpu;
            this->flavorInfo[index].mem = this->flavorInfoIndex[i].mem;
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

#endif // HANDLE_DATA_H
