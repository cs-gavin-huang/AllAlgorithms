%
%输入route：           路线
%输入x,y：             x,y坐标
function PlotRoute(route,x,y)
route=[route route(1)];
plot(x(route),y(route),'k-o','MarkerSize',10,'MarkerFaceColor','w','LineWidth',1.5);
xlabel('x');
ylabel('y');
end