/*
 * @Author: geekli
 * @Date: 2020-11-11 19:11:23
 * @LastEditTime: 2020-11-11 19:11:25
 * @LastEditors: your name
 * @Description: 
 * @FilePath: /AllAlgorithms/图着色/Tabu_K_Color.cpp
 */
#include<iostream>
#include<cstring>
using namespace std;
int n,m,g,i;  //n表示无向图中结点个数，m表示颜色个数，g表示结点关系个数 
int a[10000][10000];  //只开到结点个数为10000的范围
void NextValue(int k,int m,int* x); 
void mColoring(int k,int m,int *x);
void mColoring(int m,int *x);
 
int main()      //主函数
{
	memset(a,0,sizeof(a)); 
	cout << "请输入无向图中结点的个数: ";
	cin >> n;
	cout << "请输入边的条数: ";
	cin >> g;
	cout << "请输入颜色个数: "; 
	cin >> m;
	int *x = new int[100];
    int u, v;
    for(i = 0; i < n; i++) x[i] = 0;
    for(i = 0; i < g; i++)
	{
		cout << "请输入边:";
		cin >> u >> v;
	    a[u][v] = a[v][u] = 1;
	}
	cout << "着色方案: " << endl; 
	mColoring(m,x);
 
    return 0;
}
 
void NextValue(int k,int m,int* x)
{
	//本函数在[1,m]中为x[k]确定一个值最小的，且不与其邻接点冲突的颜色
	//x[k]=0表示没有可用的颜色，颜色从1开始进行编号
	int j;
    do{
		x[k]=(x[k]+1) % (m+1);    		 //尝试下一种颜色 
		if(!x[k]) return;         		 //没有可用颜色 
		for(j = 0; j < k; j++)  {
			if(a[k][j] && x[k] == x[j])  //若(i,j)是图的边，且相邻结点k和j颜色相同 
				break;                   //发生冲突，选择下一种颜色 
			}
		if(j == k) return;               //成功选择一种颜色返回 
	}while(1);
}
void mColoring(int k,int m,int *x)
{
	do{
		NextValue(k, m, x);             //为x[k]分配颜色 
		if(!x[k])  break;               //x[k]=0表示当前没有合适的颜色 
		if(k == n - 1) {                //得到图G的一种m-着色方案 
			for(int i = 0; i < n; i++)  cout<<x[i]<<' ';
			cout<<endl;
		}
		else
			mColoring(k+1,m,x);         //已经对前k个结点分配了颜色，尝试其余结点 
	}while(1);
}
void mColoring(int m,int *x)
{
	mColoring(0,m,x);
}