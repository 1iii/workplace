#ifndef MY_DATE_UTIL_H
#define MY_DATE_UTIL_H
class MyDate
{
// ʱ������࣬��ԭ���Ĵ�������˷�װ
public:
    static int md[13];
    static int getDays(int year,int month,int day);
    int year;
    int month;
    int day;
    MyDate(int year,int month,int day);
    static int getDays(MyDate *date);
    static int interval(MyDate *beginDate,MyDate *endDate);
};
#endif // MY_DATE_UTIL_H
