#ifndef HANDLE_TRAINDATA_H
#define HANDLE_TRAINDATA_H

#include <iostream>
#include <string>
#include <map>
#include <vector>

#include "lib_io.h"

using namespace std;

//input�ļ������Ϣ��ȡ
class inputdata {
public:
    //�����������Ϣ
    int serverCPU;
    int serverMEM;
    int serverDisk;
    //�����
    int flavorinfo[15][3];
    int numtype;
    //Ҫ�Ż��Ķ���
    string target;

    //Ԥ���ʱ����
    int timesec;
    void handle_inputdata(char ** const info);
};

class traindata {
public:
    int flavor_data[5000][4];//������Ϊ���ͺţ��꣬�£���
    void hanle_traindata(char ** const data, int data_num);

};


string int2str(const int &i);


int daylength(int y,int m,int d);

//����ʱ����
int countlength(int *firsttime,int *lasttime);
#endif // HANDLE_TRAINDATA_H
