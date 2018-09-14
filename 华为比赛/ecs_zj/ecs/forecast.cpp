#include "forecast.h"


int predict_flavor[15] = {0};
int predict_flavor1[15]= {0};
int predict_flavor_totalnum = 0;
void forecast(char ** const info, char ** data, int data_num)
{
    traindata traininfo;
    inputdata serverAndflavor;
    traininfo.hanle_traindata(data, data_num); //ѵ������
    serverAndflavor.handle_inputdata(info);//�����ļ�����

    int traintime = countlength(traininfo.flavor_data[0]+1, traininfo.flavor_data[data_num - 1]+1);
    cout << "ѵ������ʱ���ȣ�" << traintime << endl;

    /*һ��Ԥ�ⷽ��Ϊ����ѵ������ʱ��ֳ��������䣬ÿ������ȡƽ��ֵ����Ȩֵ�����յõ������һ���ڿ��ܳ��ֵ�����
    ��ʽΪ��num=a*����1+b*����2+c*����3
    **/
    //��ѵ�����ݰ�ʱ��ֳ������֣�time_sec�ڴ���ĸ�ʱ��ڵ�����
    int time_sec[4];
    for(int j=0;j<4;j++){
        time_sec[j]=0;
    }
    time_sec[0] = 0;
    int inside =1;
    int t = 0;
    int count_day = 1;
    int compare_day = 1;
    for(int i = 0; i < data_num-1; i++)
    {
        t = countlength(traininfo.flavor_data[i]+1, traininfo.flavor_data[i + 1]+1);
        count_day += t;
        if(count_day != compare_day  && (count_day % (traintime/3)) == 0)
        {
            time_sec[inside] = i;
            inside++;
            compare_day = count_day;
        }
    }

    time_sec[3] = data_num -1;


    //������������ʱ����
    int time[3]={0};
    time[0] = countlength(traininfo.flavor_data[0]+1, traininfo.flavor_data[time_sec[1]]+1);
    time[1] = countlength(traininfo.flavor_data[time_sec[1]]+1, traininfo.flavor_data[time_sec[2]]+1);
    time[2] = countlength(traininfo.flavor_data[time_sec[2]]+1, traininfo.flavor_data[data_num - 1]+1);


    //ͳ����������ѵ�������и��ͺŵ�����,ֻ��ҪԤ��15���ͺ�
    int train_num[3][15];
    for(int i = 0; i < 3; ++i)
    {
        for(int j = time_sec[i]; j < time_sec[i + 1]; ++j)
        {
            switch(traininfo.flavor_data[j][0])
            {
            case 1:
                train_num[i][0]++;
                break;
            case 2:
                train_num[i][1]++;
                break;
            case 3:
                train_num[i][2]++;
                break;
            case 4:
                train_num[i][3]++;
                break;
            case 5:
                train_num[i][4]++;
                break;
            case 6:
                train_num[i][5]++;
                break;
            case 7:
                train_num[i][6]++;
                break;
            case 8:
                train_num[i][7]++;
                break;
            case 9:
                train_num[i][8]++;
                break;
            case 10:
                train_num[i][9]++;
                break;
            case 11:
                train_num[i][10]++;
                break;
            case 12:
                train_num[i][11]++;
                break;
            case 13:
                train_num[i][12]++;
                break;
            case 14:
                train_num[i][13]++;
                break;
            case 15:
                train_num[i][14]++;
                break;
            }
        }
    }

    int weight1 = 1, weight2 = 1.9, weight3 = 4;

    for(int i = 0; i < serverAndflavor.numtype; ++i)
    {
        // cout << "flavor" << serverAndflavor.flavorinfo[i][0] << ":\t" << train_num[0][serverAndflavor.flavorinfo[i][0] - 1] << "\t"
        //          << train_num[1][serverAndflavor.flavorinfo[i][0] - 1] << "\t" << train_num[2][serverAndflavor.flavorinfo[i][0] - 1] << endl;
        predict_flavor1[serverAndflavor.flavorinfo[i][0]-1]=serverAndflavor.timesec * (
                    weight1 * train_num[0][serverAndflavor.flavorinfo[i][0]-1]/time[0]/3
                    +weight2*train_num[1][serverAndflavor.flavorinfo[i][0]-1]/time[1]/3
                    +weight3*train_num[2][serverAndflavor.flavorinfo[i][0]-1]/time[2])/3;
        predict_flavor[i]=predict_flavor1[serverAndflavor.flavorinfo[i][0]-1];
        predict_flavor_totalnum +=predict_flavor1[serverAndflavor.flavorinfo[i][0]-1];

    }
    //cout<<predict_flavor_totalnum<<endl;

}

