#ifndef FORECAST_H_INCLUDED
#define FORECAST_H_INCLUDED

#include <string.h>
#include <vector>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include <cstdio>

#include "handle_data.h"


using namespace std;

extern int predict_flavor[15];//Ԥ�����������ͺ������������±��ʾ�ͺ�
extern int predict_flavor1[15];
extern int predict_flavor_totalnum;//Ԥ��������������

void forecast(char ** const info,char ** data,int data_num);
#endif // FORECAST_H_INCLUDED
