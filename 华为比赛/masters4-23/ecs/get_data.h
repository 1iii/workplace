#ifndef __GET_DATA_H__
#define __GET_DATA_H__

#include "lib_io.h"
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <fstream>
#include <sstream>

using namespace std;

int sum(int y, int m, int d);           //��������������
int Count(int *time1, int *time2);      //�����������ڼ������

class Server
{
public:
    int numtype;                //������������
    string Type[3];      //�����ͺ�
    int data[3][3];      //�������ݣ��������ʾ�������ͣ�����������ΪCPU���ڴ桢Ӳ��

    void getnum(char ** const info);
};

class Flavor
{
public:
    int numtype;                //����������������
    int numFlavor[18][3];       //�������ʾ�������ţ���Ӧ�ͺ�������ͺ�\CPU������\�ڴ�
    int tspan;                  //Ԥ��ʱ����
    int time1[3];
    int time2[3];
    void get_numtype(char ** const info);
};

class TrainData
{
public:
    int data[20000][4];     //traindata�ļ���ȡ�����Σ��������ţ��꣬�£���
    void get_data(char **data_file, int data_num);  //����Ϊѵ�����ݡ���������
};

#endif
