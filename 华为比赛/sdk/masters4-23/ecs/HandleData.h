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
