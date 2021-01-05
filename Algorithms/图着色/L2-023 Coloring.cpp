/*
 * @Author: geekli
 * @Date: 2020-11-11 19:16:27
 * @LastEditTime: 2020-11-11 19:18:19
 * @LastEditors: your name
 * @Description: 
 * @FilePath: /AllAlgorithms/图着色/L2-023 Coloring.cpp
 */

/* 
6 8 3
2 1
1 3
4 6
2 5
5 4
3 6
4
1 2 3 3 1 2
4 5 6 6 4 5
1 2 3 4 5 6
2 3 4 2 3 4
*/

#include<stdio.h>
#include<set>
using namespace std;
int main()
{
	int V,E,K,v1,v2;
	int m[501][501];
	scanf("%d %d %d",&V,&E,&K);
	for(int i=0;i<E;i++)
	{
		scanf("%d %d",&v1,&v2);
		m[v1][v2] = 1;
		m[v2][v1] = 1;
	}
	int N;
	scanf("%d",&N);
	int c[501],color;
	for(int l=0;l<N;l++)
	{
		set<int> s;
		for(int i=1;i<=V;i++)
		{
			scanf("%d",&color);
			s.insert(color);
			c[i] = color;
		}
		if(s.size() != K)
		{
			printf("No\n");
			continue;
		}
		int flag = 0 ;
		for(int i=1; i<=V; i++)
		{
			for(int j=1; j<=V; j++)
			{
				if(m[i][j]==1){
					if(c[i] == c[j])
					{
						printf("No\n");
						flag = 1;
						break;
					}
				}
				if(flag==1)
					break;
			}
		}
		if(flag == 0)
			printf("Yes\n");
	}
	return 0;
}