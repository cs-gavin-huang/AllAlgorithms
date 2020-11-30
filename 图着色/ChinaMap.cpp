//https://blog.csdn.net/zealfory/article/details/42744245
#include<iostream>
#include<iomanip>
#include <string>
using namespace std;
int N;//选择颜色个数
int color[8]={0};//存储对应块对应颜色
typedef struct//定义图
{
	string state[50];  //各州的名称
	int a[50][50]; //相邻州的邻接矩阵
	int vnum,arcnum;//图的顶点数和边数
}Graph;
 
//输出颜色信息
void inforc()  
	{
	
		cout<<"1.红色  2.蓝色 3.黄色 4.粉色 ";
 
		if(N>=5) cout<<"5.绿色 ";
		if(N>=6) cout<<"6.橙色 ";
		if(N>=7) cout<<"7.白色 ";
		cout<<endl<<endl;
	}
 
//输入地图的信息
void CreateGraph(Graph &G)
{
	G.vnum=34;
	G.arcnum=233;
	//初始化矩阵
	for(int i=0;i<50;i++)
		for(int j=0;j<50;j++)
			G.a[i][j]=0;
    /* 
    23个省分别为：河北省、山西省、辽宁省、吉林省、黑龙江省、江苏省、浙江省、安徽省、福建省、江西省、山东省、河南省、湖北省、湖南省、广东省、海南省、四川省、贵州省、云南省、陕西省、甘肃省、青海省、台湾省。
    5个自治区分别为：、广西壮族自治区、西藏自治区、宁夏回族自治区、新疆维吾尔自治区。
    4个直辖市分别为：北京市、天津市、上海市、重庆市。
    2个特别行政区分别为：香港特别行政区、澳门特别行政区
    */
	G.state[0] = "河北省";G.state[1] = "山西省";G.state[2] = "辽宁省";G.state[3] = "吉林省";
	G.state[4] = "黑龙江省";G.state[5] = "江苏省";G.state[6] = "浙江省"; G.state[7] = "安徽省";
	G.state[8] = "福建省";G.state[9] = "江西省";G.state[10] = "山东省";G.state[11] = "河南省";
	G.state[12] = "湖北省";G.state[13] = "湖南省";G.state[14] = "广东省";G.state[15] = "海南省";
	G.state[16] = "四川省";G.state[17] = "贵州省";G.state[18] = "云南省";G.state[19] = "陕西省";
	G.state[20] = "甘肃省";G.state[21] = "青海省";G.state[22] = "台湾省";G.state[23] = "内蒙古自治区";
    G.state[24] = "广西壮族自治区";G.state[25] = "西藏自治区";G.state[26] = "宁夏回族自治区";G.state[27] = "新疆维吾尔自治区";
    G.state[28] = "北京市";G.state[29] = "天津市";G.state[30] = "上海市";G.state[31] = "重庆市";
    G.state[32] = "香港特别行政区";G.state[33] = "澳门特别行政区";
    //定义他们的邻接关系
    G.a[0][28]=1;G.a[0][29]=1;G.a[0][1]=1;G.a[0][11]=1;G.a[0][10]=1;G.a[0][2]=1;G.a[0][23]=1;
    G.a[1][0]=1;G.a[1][11]=1;G.a[1][23]=1;G.a[1][19]=1;
    G.a[2][0]=1;G.a[2][3]=1;G.a[2][23]=1;
    G.a[3][2]=1;G.a[3][23]=1;G.a[3][4]=1;
    G.a[4][3]=1;G.a[4][23]=1;
    G.a[5][10]=1;G.a[5][7]=1;G.a[5][6]=1;G.a[5][30]=1;
    G.a[6][30]=1;G.a[6][5]=1;G.a[6][7]=1;G.a[6][9]=1;G.a[6][8]=1;
    G.a[7][11]=1;G.a[7][12]=1;G.a[7][10]=1;G.a[7][5]=1;G.a[7][6]=1;G.a[7][9]=1;
    G.a[8][14]=1;G.a[8][9]=1;G.a[8][6]=1;
    G.a[9][14]=1;G.a[9][8]=1;G.a[9][6]=1;G.a[9][7]=1;G.a[9][12]=1;G.a[9][7]=1;G.a[9][13]=1;
    G.a[10][0]=1;G.a[10][11]=1;G.a[10][7]=1;G.a[10][5]=1;
    G.a[11][7]=1;G.a[11][10]=1;G.a[11][0]=1;G.a[11][1]=1;G.a[11][19]=1;G.a[11][12]=1;
    G.a[12][7]=1;G.a[12][11]=1;G.a[12][19]=1;G.a[12][31]=1;G.a[12][13]=1;G.a[12][9]=1;
    G.a[13][14]=1;G.a[13][9]=1;G.a[13][12]=1;G.a[13][31]=1;G.a[13][17]=1;G.a[13][24]=1;
    G.a[14][8]=1;G.a[14][9]=1;G.a[14][13]=1;G.a[14][24]=1;
    G.a[16][31]=1;G.a[16][19]=1;G.a[16][20]=1;G.a[16][21]=1;G.a[16][25]=1;G.a[16][18]=1;G.a[16][17]=1;
    G.a[17][31]=1;G.a[16][19]=1;G.a[16][20]=1;G.a[16][21]=1;G.a[16][25]=1;G.a[16][18]=1;G.a[16][17]=1;
	G.a[18][24]=1;G.a[18][17]=1;G.a[18][16]=1;G.a[18][25]=1;
	G.a[19][31]=1;G.a[19][12]=1;G.a[19][11]=1;G.a[19][1]=1;G.a[19][23]=1;G.a[19][26]=1;G.a[19][20]=1;G.a[19][16]=1;
	G.a[20][16]=1;G.a[20][19]=1;G.a[20][26]=1;G.a[20][23]=1;G.a[20][27]=1;G.a[20][21]=1;
	G.a[21][16]=1;G.a[21][20]=1;G.a[21][27]=1;G.a[21][25]=1;
	G.a[23][4]=1;G.a[23][3]=1;G.a[23][2]=1;G.a[23][0]=1;G.a[23][1]=1;G.a[23][19]=1;G.a[23][26]=1;G.a[23][20]=1;
	G.a[24][14]=1;G.a[24][13]=1;G.a[24][17]=1;G.a[24][18]=1;
	G.a[25][18]=1;G.a[25][16]=1;G.a[25][21]=1;G.a[25][27]=1;
	G.a[26][20]=1;G.a[26][19]=1;G.a[26][23]=1;
	G.a[27][25]=1;G.a[27][21]=1;G.a[27][20]=1;
	G.a[28][0]=1;G.a[28][29]=1;
	G.a[29][0]=1;G.a[29][28]=1;
	G.a[30][5]=1;G.a[30][6]=1;
	G.a[31][16]=1;G.a[31][17]=1;G.a[31][13]=1;G.a[31][12]=1;G.a[31][19]=1;
	G.a[32][14]=1;
	G.a[33][14]=1;




    
		
}
 
//输出地图的信息
void PrintGraph(Graph G)
{
	int i,j;
	cout<<"中国的34个省和直辖市：\n";
	cout<<endl;
	for(i=0;i<G.vnum;i++)
	{
			if(i%3==0&&i!=0) cout<<endl;
			cout<<setw(2)<<left<<i<<"."<<setw(15)<<left<<G.state[i];
	}
        cout<<endl<<endl;
	cout<<"互相接壤的省或市(地图的邻接矩阵)：\n";
	cout<<endl;
	for(i=0;i<G.vnum;i++)
		for(j=0;j<G.vnum;j++)
			if(G.a[i][j]==1)
				cout<<G.state[i]<<"与"<<G.state[j]<<"接壤 "<<endl;
	        
		cout<<endl;
	
}
 
//颜色比对函数
int colorsame(int s,Graph G)//限定函数
{
	int i,flag=0;   //初始化标志位为零
	for(i=0;i<s;i++)//与已经涂过色的州进行比对
	   if(G.a[i][s]==1&&color[i]==color[s])//两州接壤且颜色相同
		{flag=1;break;}//标志为一，在trycolor函数中更换颜色
		return flag;  //返回标志值
}
 
//输出函数
void output(Graph G)
{
	for(int i=0;i<G.vnum;i++)
		{
			if(i%3==0&&i!=0) cout<<endl;
			cout.setf(ios::left); 
			cout<<setw(2)<<i<<"."<<setw(15)<<G.state[i]<<":";//相应州名
			switch(color[i])    //将数字转换成相应颜色
			{
			case 0: cout<<" 红   ";break;
			case 1: cout<<" 蓝   ";break;
			case 2: cout<<" 黄   ";break;
			case 3: cout<<" 粉   ";break;
			case 4: cout<<" 绿   ";break;
			case 5: cout<<" 橙   ";break;
			case 6: cout<<" 白   ";break;
			}				
		}
	cout<<endl;
}
 
//试色函数
void trycolor(int s,Graph G)//s为着色的起点，本算法从0开始
{
	int i;
	if(s>G.vnum)//递归出口
	{
		output(G);
		system("pause");
		exit(1);
	}
	else
	{
		for(i=0;i<N;i++)//对每种色彩逐个测试
		{
		   color[s]=i;
		   if(colorsame(s,G)==0)//通过colorsame函数测试是否符合颜色要求
			trycolor(s+1,G);// 进行下一块着色
		}
	}
}
 
 
 
 
int main()//主函数
{
	cout<<"     ....中国地图着色Loading....  "<<endl;
 
	cout<<"请问使用几种颜色为地图着色（7，6，5，4）？"<<endl;
	cin>>N;
	cout<<"供您选择的颜色有："<<endl;
	inforc(); //输出颜色信息
	Graph G;
	CreateGraph(G);
	PrintGraph(G);
	cout<<"中国地图着色方案:\n";
	trycolor(0,G);//着色
	return 0;
	
}