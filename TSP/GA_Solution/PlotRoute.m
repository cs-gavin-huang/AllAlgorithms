%
%      @���ߣ�����390
%      @΢�Ź��ںţ��Ż��㷨������
%
%����route��           ·��
%����x,y��             x,y����
function PlotRoute(route,x,y)
route=[route route(1)];
plot(x(route),y(route),'k-o','MarkerSize',10,'MarkerFaceColor','w','LineWidth',1.5);
xlabel('x');
ylabel('y');
end