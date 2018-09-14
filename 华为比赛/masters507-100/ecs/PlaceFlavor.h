#ifndef PLACE_FLAVOR_H
#define PLACE_FLAVOR_H

#include "memory.h"
#include "HandleData.h"
#include <list>
#include <iostream>
using namespace std;


#define PRINT_DEBUG false

class PredictResult
{
// ��Ÿ��ͺŵ�Ԥ����

public:
//    int sum = 0;
    int nums[18]; //��ǰ��
//    int numsIndex[15];

    PredictResult()
    {
        memset(this->nums,0,sizeof(int) * 18);
    }

    PredictResult(PredictResult *other)
    {
        memcpy(this->nums,other->nums,sizeof(int) * 18);
//        memcpy(this->numsIndex,other->numsIndex,sizeof(int) * 15);
//        this->sum = other->sum;
    }

    void display()
    {
        printf("\n\nClass PredictResult:\n");
        printf("Ԥ�����У�ÿ���ͺŵ�������\n");
        for (int i=0; i < 18; ++i)
        {
            printf("i=%d,num=%d\n",i,nums[i]);
        }
    }
};

/**
    ���÷����ࣺ��ǰ���󼴴���ǰ�������ͺŻ��ӵķ�����Ŀ
    һ��������Ӧ��һ̨������ķ��÷���

**/
class PlaceMethod
{
private:

#if PRINT_DEBUG == true
    int deep = 0;
#endif // PRINT_DEBUG
public:
    int flavorNum =0; // �ж����ֻ���ҪԤ��

    int consumeCpuNum = 0; //��ǰ���÷�������CPU������
    int consumeMemNum = 0; //��ǰ���÷�������MEM������

    PhysicsServerFormat *serverInfo;
    PredictFlavorFormat *flavorInfos;
    PredictResult *predictResult; // �洢���ǻ�Ӧ���õĸ��ͺŻ�����Ŀ


    /**
        ���ã��Ե�i��λ�õ���������з��ã���������Ϊt
        �����޸��ˣ�����ȥ��i����
    **/
    void place(int i,int t=1)
    {
        this->placedNums[i] += t;
        this->consumeCpuNum += this->flavorInfos->flavorInfo[i].cpu * t;
        this->consumeMemNum += this->flavorInfos->flavorInfo[i].mem * t;
        currPlaceNum = i;
    }

    /**
        ���ط��ã���һ�������ķ�����
    **/
    void withdrawPlace(int t = 1)
    {
        this->placedNums[currPlaceNum] -= t;
        this->consumeCpuNum -= this->flavorInfos->flavorInfo[currPlaceNum].cpu * t;
        this->consumeMemNum -= this->flavorInfos->flavorInfo[currPlaceNum].mem * t;
    }

    /**
        ��ʼ��������
    **/
    void init(int *placedFlavorNums,int consumeCpuNum,int consumeMemNum,int flavorNum,PhysicsServerFormat *serverInfo,PredictFlavorFormat *flavorInfos,PredictResult *predictResult)
    {
#if PRINT_DEBUG == true
        this->deep = callDepp ++;
#endif // PRINT_DEBUG
        this->placedNums = new int[flavorNum];
        memcpy(this->placedNums,placedFlavorNums, sizeof(int) * (flavorNum));
        this->consumeCpuNum = consumeCpuNum;
        this->consumeMemNum = consumeMemNum;
        this->flavorNum = flavorNum;
        this->serverInfo = serverInfo;
        this->flavorInfos = flavorInfos;
        this->predictResult = predictResult;
        this->currPlaceNum = flavorNum -1;
#if PRINT_DEBUG == true
        printf("Place callDeep=%d\n",this->deep);
#endif // PRINT_DEBUG

    }

    /**
        ����ֵ
    **/
    void update(PlaceMethod *other)
    {
        memcpy(this->placedNums,other->placedNums, sizeof(int) * this->flavorNum);
        this->consumeCpuNum = other->consumeCpuNum;
        this->consumeMemNum = other->consumeMemNum;
        this->placedOver = other->placedOver;
    }

    /**
        ���� i��λ�ã��Ƿ񻹿��Է��ã�����һ���������ԣ�����true
    **/
    bool check(int i)
    {
        if (this->consumeCpuNum + this->flavorInfos->flavorInfo[i].cpu > this->serverInfo->cpu ||
                this->consumeMemNum + this->flavorInfos->flavorInfo[i].mem > this->serverInfo->mem)
        {
            return false;
        }
        if (this->placedNums[i] >= this->predictResult->nums[i])
        {
            return false;
        }
        return true;
    }

    /**
        �ڱ��ز��Խ׶μ�����ݴ���ʹ�ã���ȥ��
    **/
    void checkTestError()
    {
        for (int i=0; i< flavorNum; ++i)
        {
            if (this->flavorInfos->flavorInfo[i].cpu > this->serverInfo->cpu ||
                    this->flavorInfos->flavorInfo[i].mem > this->serverInfo->mem ||
                    this->flavorInfos->flavorInfo[i].disk > this->serverInfo->disk )
            {
                printf("���ݴ������������ܱ�������ߣ�����Ĺ��\n");
                this->flavorInfos->flavorInfo[i].display();
                this->serverInfo->display();
                exit(-1);
            }
        }
    }

    /**
        ����Ƿ������ϣ�����Ӧ���õ���ĿȫΪ0
    **/
    bool isWorkOut()
    {
        for (int i=0; i<flavorNum; ++i)
        {
            if (predictResult->nums[i] != 0)
            {
                return false;
            }
        }
        return true;
    }


public:

    int *placedNums; // ���飬�洢���ǣ���ǰ���÷��������ͺŵķ�����Ŀ
    bool placedOver = false; // �Ƿ������ϱ��
    int currPlaceNum = -1; // �Ǻţ���¼�ĵ�ǰ�����Ƿ��õ���λλ�õĻ���

    // ��ʼ���캯�����������κη���
    PlaceMethod(PhysicsServerFormat *serverInfo,PredictFlavorFormat *flavorInfos,PredictResult *predictResult,int flavorNum)
    {
        int *initPlacedNums = new int[flavorNum];
        for (int i=0; i < flavorNum; ++i)
        {
            initPlacedNums[i] = 0;
        }

        this->init(initPlacedNums, 0, 0,flavorNum,serverInfo,flavorInfos,predictResult);
        delete initPlacedNums;
        this->checkTestError();
        if (isWorkOut())
        {
            printf("\nError:can not happend this\n");
        }
    }

    // ���캯����placeNum ��ʾ�˶���Ҫ�Եڼ���λ�õĻ��ӽ��з���
    PlaceMethod(PlaceMethod *copyPlaceCpu,int placeNum)
    {
        this->init(copyPlaceCpu->placedNums,copyPlaceCpu->consumeCpuNum,copyPlaceCpu->consumeMemNum,copyPlaceCpu->flavorNum,
                   copyPlaceCpu->serverInfo,copyPlaceCpu->flavorInfos,copyPlaceCpu->predictResult);
//        this->place(placeNum);
        this->currPlaceNum = placeNum;
    }


    // ��鵱ǰ�����Ƿ�ռ�����CPU��MEM���ǣ�����true
    bool occupiedAll()
    {
        if (this->consumeCpuNum == this->serverInfo->cpu && this->consumeMemNum == this->serverInfo->mem)
        {
            this->placedOver = true;
            return true;
        }

        for (int i=0; i < flavorNum; ++i)
        {
            if (this->placedNums[i] != this->predictResult->nums[i])
            {
                return false;
            }
        }
        this->placedOver = true;
        return true;
    }

    // ��������
    ~PlaceMethod()
    {
#if PRINT_DEBUG == true
        printf("~~~~Place callDeep=%d\n",this->deep);
#endif // PRINT_DEBUG

        if (placedNums != nullptr)
        {
            delete []placedNums;
        }
        if (maxMethod != nullptr)
        {
            delete maxMethod;
            maxMethod = nullptr;
            maxMethod2 = nullptr;
        }
    }

    PlaceMethod *maxMethod = nullptr;
    PlaceMethod *maxMethod2 = nullptr;

    // ���ĺ�����
    // Ѱ���ڱ�����ķ��÷����£�id��С�Ļ��ӵķ��÷���
    PlaceMethod *getMaxMethodInCurrCase()
    {
        if (this->occupiedAll())
        {
            return this;
        }
        PlaceMethod *maxMethodInCase = nullptr;
        for (int i= this->currPlaceNum - 1; i >= 0 ; --i)
        {
            if ( ! this->check(i))
            {
                continue;
            }

            PlaceMethod *tryMethod = new PlaceMethod(this,i);
            tryMethod->placeAuto();
            if (tryMethod->placedOver)
            {
                this->update(tryMethod);
                delete tryMethod;
                return this;
            }
            maxMethodInCase = PlaceMethod::MAX_SUE(maxMethodInCase,tryMethod);
        }
        return maxMethodInCase;
    }

    /**
        ���ĺ������ݹ麯��
        ��������һ�����Եݹ���ԣ�����һ�������÷���������£��������������÷���
        �������������÷������ɱ��������ɵ���һ�����÷�������
    **/
    PlaceMethod *placeAuto()
    {
        if (currPlaceNum == flavorNum - 1)
        {
            int leaveNums = this->predictResult->nums[currPlaceNum] - this->placedNums[currPlaceNum];
            int couldPlacedNum1 = (this->serverInfo->cpu - this->consumeCpuNum) / this->flavorInfos->flavorInfo[currPlaceNum].cpu;
            int couldPlacedNum2 = (this->serverInfo->mem - this->consumeMemNum) / this->flavorInfos->flavorInfo[currPlaceNum].mem;
            int couldPlacedNum = couldPlacedNum1 <= couldPlacedNum2 ? couldPlacedNum1 : couldPlacedNum2;
            int maxTimes = leaveNums <= couldPlacedNum ? leaveNums : couldPlacedNum;
            if (maxTimes == 0)
            {
                maxMethod2 = getMaxMethodInCurrCase();
                if (maxMethod2 == nullptr)
                {
                    printf("\nMay be work out!\n");
                    return this;
                }
                else if (maxMethod2->placedOver)
                {
                    this->update(maxMethod2);
                    return this;
                }
                maxMethod = PlaceMethod::MAX_SUE(maxMethod,maxMethod2);
            }
            else
            {
                for (int t = maxTimes; t >= 1; --t)
                {
                    this->place(currPlaceNum,t);
                    maxMethod2 = getMaxMethodInCurrCase();
                    if (maxMethod2 == nullptr)
                    {
                        this->withdrawPlace(t);
                        continue;
                    }
                    else if (maxMethod2->placedOver)
                    {
                        this->update(maxMethod2);
                        return this;
                    }
                    maxMethod = PlaceMethod::MAX_SUE(maxMethod,maxMethod2);
                    this->withdrawPlace(t);
                }
            }
            if (maxMethod != nullptr)
            {
                this->update(maxMethod);
            }
            else
            {
                this->place(currPlaceNum,maxTimes);
            }
            return this;
        }

        int leaveNums = this->predictResult->nums[currPlaceNum] - this->placedNums[currPlaceNum];
        int couldPlacedNum1 = (this->serverInfo->cpu - this->consumeCpuNum) / this->flavorInfos->flavorInfo[currPlaceNum].cpu;
        int couldPlacedNum2 = (this->serverInfo->mem - this->consumeMemNum) / this->flavorInfos->flavorInfo[currPlaceNum].mem;
        int couldPlacedNum = couldPlacedNum1 <= couldPlacedNum2 ? couldPlacedNum1 : couldPlacedNum2;
        int maxTimes = leaveNums <= couldPlacedNum ? leaveNums : couldPlacedNum;

        if (maxTimes == 0)
        {
            printf("Error:maxTimes==0\n");
        }
        for (int t = maxTimes; t>=1; --t)
        {
            this->place(currPlaceNum,t);
            maxMethod2 = getMaxMethodInCurrCase();
            if (maxMethod2 == nullptr)
            {
                this->withdrawPlace(t);
                continue;
            }
            else if (maxMethod2->placedOver)
            {
                this->update(maxMethod2);
                return this;
            }
            maxMethod = PlaceMethod::MAX_SUE(maxMethod,maxMethod2);
            this->withdrawPlace(t);
        }
        if (maxMethod != nullptr)
        {
            this->update(maxMethod);
        }
        else
        {
            this->place(currPlaceNum,maxTimes);
        }
        return this;
    }

    /**
        ���ĺ������ȽϺ���
        �Ƚ��������÷���˭����
        Ŀǰ����˭���õ�CPU��MEM�����࣬���бȽ�
    **/
    static PlaceMethod *MAX_SUE(PlaceMethod *method1,PlaceMethod *method2)
    {

        if (method1 == nullptr)
        {
            return method2;
        }
        if (method1->consumeCpuNum >= method2->consumeCpuNum && method1->consumeMemNum >= method2->consumeMemNum)
        {
            delete method2;
            return method1;
        }
        else if (method1->consumeCpuNum <= method2->consumeCpuNum && method1->consumeMemNum <= method2->consumeMemNum)
        {
            delete method1;
            return method2;
        }
        else if (method1->consumeCpuNum >= method2->consumeCpuNum && method1->consumeMemNum >= method2->consumeMemNum * 0.8)
        {
            delete method2;
            return method1;
        }
        else if (method1->consumeCpuNum <= method2->consumeCpuNum && method1->consumeMemNum *0.8 <= method2->consumeMemNum)
        {
            delete method1;
            return method2;
        }
        else if (method1->consumeCpuNum >= method2->consumeCpuNum * 0.8 && method1->consumeMemNum >= method2->consumeMemNum)
        {
            delete method2;
            return method1;
        }
        else if (method1->consumeCpuNum *0.8 <= method2->consumeCpuNum && method1->consumeMemNum <= method2->consumeMemNum)
        {
            delete method1;
            return method2;
        }
        else
        {
            if (method1->consumeCpuNum * 2560 + method1->consumeMemNum >= method2->consumeCpuNum * 2560 + method2->consumeMemNum)
            {
                delete method2;
                return method1;
            }
            else
            {
                delete method1;
                return method2;
            }
        }
    }

    void display()
    {
        printf("\n\nClass PlaceMethod:\n");
        printf("Consume CPU=%d\n",consumeCpuNum);
        printf("Consume MEM=%d\n",consumeMemNum);
//        printf("Flavor nums=%d\n",flavorNum);
//        for (int i=0; i < flavorNum; ++i)
//        {
//            printf("i=%d,id=%d,num=%d,CPU=%d,MEM=%d\n",i,this->flavorInfos->mapToId[i],placedNums[i],
//                   this->flavorInfos->flavorInfo[i].cpu,this->flavorInfos->flavorInfo[i].mem);
//        }
        printf("\n");
    }
};

/**
    ���÷���������
    ��Ԥ�����������������
    ÿ�����������Ӧһ�����÷�������PlaceMethod
**/
class PlaceManager
{
public:

    int flavorNum =0; //ҪԤ��Ļ�������
    PhysicsServerManage *serverManage;
    PredictFlavorFormat *flavorInfos;
    PredictResult *predictResult; // �ܵ�Ԥ����
    int serversSum =0;

    list<PlaceMethod *> methods[3];// = list<PlaceMethod *>(); //��Ų�ͬ������ķ��÷���
    int methodsNum[3][200]; // �еķ��÷��������ԷŶ�̨��������˴���¼ÿ�������Ŷ��ٸ������
    int placedNums[15] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}; // ��ǰ�ѷ��õĻ��Ӹ�������ǰ��

    // ���캯������ʼ��
    PlaceManager(PhysicsServerManage *serverManage,PredictFlavorFormat *flavorInfos,PredictResult *predictResult,int flavorNum)
    {
        this->flavorNum = flavorNum;
        this->serverManage = serverManage;
        this->flavorInfos = flavorInfos;
        this->predictResult = predictResult;
        methods[0] = list<PlaceMethod *>();
        methods[1] = list<PlaceMethod *>();
        methods[2] = list<PlaceMethod *>();
        memset(methodsNum,0,sizeof(int) * 3 * 200);
//        printf("Place start!\n\n");
    }

    /**
        ���ĺ�����Ѱ��һ̨��������ŷ��÷����������ԷŶ�̨�����
    **/
    void placeAuto()
    {
        PredictResult remainResult = PredictResult(this->predictResult);

        int choosedServerType = 1;
        choosedServerType = this->chooseServerTypeToPlace();
//        for (int j=0; j<3; ++j)
        while ( ! this->isWorkOut())
        {
            PlaceMethod *method = new PlaceMethod( &(this->serverManage->serverInfos[choosedServerType]) ,this->flavorInfos,&remainResult,this->flavorNum);
            method->placeAuto();
//            method->display();
            choosedServerType = this->useMethodToPlace(method);
            int enoughType = this->isOneServerResourceEnough();
            if (enoughType != -1)
            {
                choosedServerType = enoughType;
            }
            for (int i=0; i < flavorNum; ++i)
            {
                // ���˷��÷���֮�󣬾ͻ���ٻ�Ӧ���õĸ������˴���Ż�Ӧ���õĸ���
                remainResult.nums[i] = predictResult->nums[i] - this->placedNums[i];
            }
        }
    }

    // ���л��ӷ����ˣ��ǣ�����true
    bool isWorkOut()
    {
        for (int i=0; i<flavorNum; i++)
        {
            if ( this->placedNums[i] < this->predictResult->nums[i] && this->placedNums[i] >=0)
            {
                return false;
            }
        }
        return true;
    }

    // �õ�ǰ�ҵ������ŷ��÷������жϴ˷����ɷŶ��ٸ�������������з���
    int useMethodToPlace(PlaceMethod *method)
    {
        int maxTimes = 10000;
        int temp = maxTimes;
        for (int i=0; i < flavorNum; ++i)
        {
            temp = 0;
            if (method->placedNums[i] != 0)
            {
                temp = (int)(this->predictResult->nums[i] - this->placedNums[i])/method->placedNums[i];
            }
            if (temp < maxTimes && temp != 0)
            {
                maxTimes = temp;
            }
        }
        // ��¼���õ����������
        int reallyTimes = 1;
        int currentServerType = method->serverInfo->type;
        this->methods[currentServerType].push_back(method);
        int type = currentServerType;
        while(true)
        {
            for (int i=0; i<flavorNum; ++i)
            {
                this->placedNums[i] = this->placedNums[i] + method->placedNums[i];
            }
            type = this->chooseServerTypeToPlace();
            if (reallyTimes >= maxTimes)
            {
                break;
            }
            if (currentServerType != method->serverInfo->type)
            {
                break;
            }
            reallyTimes += 1;
//            printf("type=%d,reallyTimes=%d\n",type,reallyTimes);
        }
        this->methodsNum[currentServerType][this->methods[currentServerType].size()-1] = reallyTimes;
        return type;
    }

    int chooseServerTypeToPlace()
    {
        int remainCpuSum = 0;
        int remainMemSum = 0;
        for (int i=0; i < flavorNum; i++)
        {
            int remainNum = this->predictResult->nums[i] - this->placedNums[i];
            remainCpuSum = remainNum * this->flavorInfos->flavorInfo[i].cpu;
            remainMemSum = remainNum * this->flavorInfos->flavorInfo[i].mem / 1024;
        }
        double rates = remainMemSum / (double) remainCpuSum;
//        printf("sumCpu=%d,sumMem=%d\n",sumCpu,sumMem);

//        int chooseServerType =0;
        if (rates < this->serverManage->serverInfos[0].rates)
        {
            return 0;
        }
        else if (rates > this->serverManage->serverInfos[2].rates)
        {
            return 2;
        }
        return 1;
    }

    int isOneServerResourceEnough()
    {
        int remainCpuSum = 0;
        int remainMemSum = 0;
        for (int i=0; i<flavorNum; i++)
        {
            int remainNum = this->predictResult->nums[i] - this->placedNums[i];
            remainCpuSum = remainNum * this->flavorInfos->flavorInfo[i].cpu;
            remainMemSum = remainNum* this->flavorInfos->flavorInfo[i].mem;
        }
        if (remainCpuSum >0 && remainMemSum >0)
        {
            double occupancyRates[3] = {0.0,0.0,0.0};
            for (int i=0; i <3; ++i)
            {
                if (remainCpuSum <= this->serverManage->serverInfos[i].cpu && remainMemSum <= this->serverManage->serverInfos[i].mem)
                {
                    occupancyRates[i] = remainCpuSum /(double) this->serverManage->serverInfos[i].cpu + remainMemSum /(double) this->serverManage->serverInfos[i].mem;
                }
            }
            double maxRates=0.0;
            int index = 0;
            for (int i=0; i < 3; ++i)
            {
                if (occupancyRates[i] > 0.0 && occupancyRates[i] > maxRates)
                {
                    maxRates = occupancyRates[i];
                    index = i;
                }
            }
            if (maxRates > 0.0)
            {
                return index;
            }
        }
        return -1;
    }

    // ��������
    ~PlaceManager()
    {
        for (int num =0; num <3; ++num)
        {
            int length = methods[num].size();
            for(int i=0; i < length; ++i )
            {
                delete  (methods[num].front());
                methods[num].pop_front();
            }
        }

    }

    // ���������Ŀ
    int getServerSum(int type) const
    {
        int sum =0;
        int length = methods[type].size();
        for (int i=0; i < length; ++i )
        {
            sum += methodsNum[type][i];
        }
        return sum;
    }
    // ���������Ŀ
    int getFlavorSum() const
    {
        int sum =0;
        for (int i=0; i<flavorNum; ++i)
        {
            sum += this->predictResult->nums[i];
        }
        return sum;
    }

    void display() const
    {
        printf("\n\nClass PlaceManager:\n");
        printf("������������:\n");
        for (int i=0; i<flavorNum; ++i)
        {
            printf("i=%d,num=%d\n",i,this->placedNums[i]);
        }
        for (int i=0;i<3;++i)
        {
            printf("����Ҫ���������������%d\n",this->getServerSum(i));
        }
//        printf("ÿ����������Ŀ��\n");
//        for (unsigned int i=0; i<this->methods.size(); ++i)
//        {
//            printf("i=%d,num=%d\n",i,this->methodsNum[i]);
//        }
        printf("���÷�����\n");
    }
};



#endif // PLACE_FLAVOR_H
