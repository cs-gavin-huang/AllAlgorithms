%
%      @���ߣ�����390
%      @΢�Ź��ںţ��Ż��㷨������
%
%����route��               ·��
%����dist��                �������
%���L��                   ��·���ܾ���
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