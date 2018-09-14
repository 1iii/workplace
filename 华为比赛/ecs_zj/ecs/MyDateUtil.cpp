#include "MyDateUtil.h"

int MyDate::md[13] = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
int MyDate::getDays(int year,int month,int day)
{
    int cnt = year * 365;
    //��������������·ݶ�һ����㷨
    cnt += (year - 1) / 4 + 1;
    cnt -= (year - 1) / 100 + 1;
    cnt += (year - 1) / 400 + 1;
    //��������y�꿪ʼ��m��d�ն�����
    for (int i = 1; i < month; ++i)
        cnt += MyDate::md[i];
    if ((month > 2) && ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0))
        ++cnt;
    cnt += day;
    return cnt;
}

MyDate::MyDate(int year,int month,int day):year(year),month(month),day(day) {}
int MyDate::getDays(MyDate *date)
{
    return MyDate::getDays(date->year,date->month,date->day);
}
int MyDate::interval(MyDate *beginDate,MyDate *endDate)
{
    return MyDate::getDays(endDate) - MyDate::getDays(beginDate) ;
}
