#ifndef __FORECAST_H__
#define __FORECAST_H__

#include "get_data.h"
#include <string.h>
#include "math.h"

using namespace std;

extern int predict_data[18];     //Ԥ����ͺ�������������±��ʾ������ͺ�
extern int predict_data1[18];    //Ԥ����ͺ�������������±��ʾ˳��洢���
extern int predict_total;        //Ԥ�����������
void predict(char ** const info, char **data, int data_num);

#endif
