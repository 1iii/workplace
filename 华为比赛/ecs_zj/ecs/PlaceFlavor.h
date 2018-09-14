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
    int nums[15]; //��ǰ��
//    int numsIndex[15];

    PredictResult()
    {
        memset(this->nums,0,sizeof(int) * 15);
    }

    PredictResult(PredictResult *other)
    {
        memcpy(this->nums,other->nums,sizeof(int) * 15);
//        memcpy(this->numsIndex,other->numsIndex,sizeof(int) * 15);
//        this->sum = other->sum;
    }

    void display()
    {
        printf("\n\nClass PredictResult:\n");
        printf("Ԥ�����У�ÿ���ͺŵ�������\n");
        for (int i=0; i < 15; ++i)
        {
            printf("i=%d,num=%d\n",i,nums[i]);
        }
    }
};

#if PRINT_DEBUG == true
int callDepp =0; // ���ڼ��ݹ���ȣ��ɲ���
#endif // PRINT_DEBUG


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
    bool occupiedAll(bool is_optimize_CPU)
    {
        if (is_optimize_CPU)
        {
            if (this->consumeCpuNum == this->serverInfo->cpu)
            {
                this->placedOver = true;
                return true;
            }
        }
        else
        {
            if (this->consumeMemNum == this->serverInfo->mem)
            {
                this->placedOver = true;
                return true;
            }
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
    PlaceMethod *getMaxMethodInCurrCase(bool is_optimize_CPU)
    {
        if (this->occupiedAll(is_optimize_CPU))
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
            tryMethod->placeAuto(is_optimize_CPU);
            if (tryMethod->placedOver)
            {
                this->update(tryMethod);
                delete tryMethod;
                return this;
            }
            maxMethodInCase = PlaceMethod::MAX_SUE(maxMethodInCase,tryMethod,is_optimize_CPU);
        }
        return maxMethodInCase;
    }

    /**
        ���ĺ������ݹ麯��
        ��������һ�����Եݹ���ԣ�����һ�������÷���������£��������������÷���
        �������������÷������ɱ��������ɵ���һ�����÷�������
    **/
    PlaceMethod *placeAuto(bool is_optimize_CPU)
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
                maxMethod2 = getMaxMethodInCurrCase(is_optimize_CPU);
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
                maxMethod = PlaceMethod::MAX_SUE(maxMethod,maxMethod2,is_optimize_CPU);

            }
            else
            {
                for (int t = maxTimes; t >= 1; --t)
                {
                    this->place(currPlaceNum,t);
                    maxMethod2 = getMaxMethodInCurrCase(is_optimize_CPU);
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
                    maxMethod = PlaceMethod::MAX_SUE(maxMethod,maxMethod2,is_optimize_CPU);

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

            maxMethod2 = getMaxMethodInCurrCase(is_optimize_CPU);
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
            maxMethod = PlaceMethod::MAX_SUE(maxMethod,maxMethod2,is_optimize_CPU);
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
    static PlaceMethod *MAX_SUE(PlaceMethod *method1,PlaceMethod *method2,bool is_optimize_CPU)
    {

        if (method1 == nullptr)
        {
            return method2;
        }
        if (is_optimize_CPU)
        {

            if (method1->consumeCpuNum >= method2->consumeCpuNum)
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
        else
        {
//            if (method1->consumeMemNum == method2->consumeMemNum)
//            {
//                if (method1->consumeCpuNum > method2->consumeCpuNum)
//                {
//                    delete method2;
//                    return method1;
//                }
//                else
//                {
//                    delete method1;
//                    return method2;
//                }
//            }
            if (method1->consumeMemNum >= method2->consumeMemNum)
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
        for (int i=0; i < flavorNum; ++i)
        {
            printf("i=%d,id=%d,num=%d,CPU=%d,MEM=%d\n",i,this->flavorInfos->mapToId[i],placedNums[i],
                   this->flavorInfos->flavorInfo[i].cpu,this->flavorInfos->flavorInfo[i].mem);
        }
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
    PhysicsServerFormat *serverInfo;
    PredictFlavorFormat *flavorInfos;
    PredictResult *predictResult; // �ܵ�Ԥ����
    bool is_optimize_CPU = true; // �Ƿ��Ż�CPU
    int serversSum =0;

    list<PlaceMethod *> methods = list<PlaceMethod *>(); //��Ų�ͬ������ķ��÷���
    int methodsNum[1000]; // �еķ��÷��������ԷŶ�̨��������˴���¼ÿ�������Ŷ��ٸ������
    int placedNums[15] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}; // ��ǰ�ѷ��õĻ��Ӹ�������ǰ��

    // ���캯������ʼ��
    PlaceManager(PhysicsServerFormat *serverInfo,PredictFlavorFormat *flavorInfos,PredictResult *predictResult,int flavorNum)
    {
        this->flavorNum = flavorNum;
        this->serverInfo = serverInfo;
        this->flavorInfos = flavorInfos;
        this->predictResult = predictResult;
        memset(methodsNum,0,sizeof(int) * 1000);
    }

    /**
        ���ĺ�����Ѱ��һ̨��������ŷ��÷����������ԷŶ�̨�����
    **/
    void placeAuto(bool is_optimize_CPU)
    {
        PredictResult remainResult = PredictResult(this->predictResult);
//        for (int j=0; j<3; ++j)
        while ( ! this->isWorkOut())
        {
            PlaceMethod *method = new PlaceMethod(this->serverInfo,this->flavorInfos,&remainResult,this->flavorNum);
            method->placeAuto(is_optimize_CPU);
            this->useMethodToPlace(method);
            for (int i=0; i < flavorNum; ++i)
            {
                // ���˷��÷���֮�󣬾ͻ���ٻ�Ӧ���õĸ������˴���Ż�Ӧ���õĸ���
                remainResult.nums[i] = predictResult->nums[i] - this->placedNums[i];
            }
//            remainResult.display();
#if PRINT_DEBUG == true
            callDepp = 0;
#endif // PRINT_DEBUG
        }
//        this->display();
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
    void useMethodToPlace(PlaceMethod *method)
    {
        int times = 10000;
        int temp = times;
        for (int i=0; i < flavorNum; ++i)
        {
            temp = 0;
            if (method->placedNums[i] != 0)
            {
                temp = (int)(this->predictResult->nums[i] - this->placedNums[i])/method->placedNums[i];
            }
            if (temp < times && temp != 0)
            {
                times = temp;
            }
        }
        this->methods.push_back(method);
        // ��¼���õ����������
        this->methodsNum[this->methods.size()-1] = times;

#if PRINT_DEBUG == true
        printf("times=%d\n",times);
#endif // PRINT_DEBUG
        for (int i=0; i<flavorNum; ++i)
        {
            this->placedNums[i] = this->placedNums[i] + method->placedNums[i] * times;
        }

    }

    // ��������
    ~PlaceManager()
    {
        int length = methods.size();
        for(int i=0; i < length; ++i )
        {
            delete  (methods.front());
            methods.pop_front();
        }
    }

    // ���������Ŀ
    int getServerSum() const
    {
        int sum =0;
        int length = methods.size();
        for (int i=0; i < length; ++i )
        {
            sum += methodsNum[i];
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
        printf("����Ҫ���������������%d\n",this->getServerSum());
        printf("ÿ����������Ŀ��\n");
        for (unsigned int i=0; i<this->methods.size(); ++i)
        {
            printf("i=%d,num=%d\n",i,this->methodsNum[i]);
        }
        printf("���÷�����\n");
//        for(auto it = this->methods.begin(); it != this->methods.end(); ++ it)
//        {
//            for (int j = 0; j < this->methodsNum[i] ; ++j )
//            {
//                ++num;
//                printf("\n��%d̨������������÷���:\n",num);
//                (*it)->display();
//            }
//            ++i;
//        }
    }


};



#endif // PLACE_FLAVOR_H
