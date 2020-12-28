%
%      @作者：随心390
%      @微信公众号：优化算法交流地
%
%输入route：               路线
%输入dist：                距离矩阵
%输出L：                   该路线总距离
function L=RouteLength(route,dist)
    n=length(route);
    route=[route route(1)];
    L=0;
    for k=1:n 
        i=route(k);
        j=route(k+1); 
        L=L+dist(i,j); 
    end
end