%% 计算种群目标函数值，即每个个体的总距离
%输入Chrom：           种群
%输入dist：            距离矩阵
%输出Obj：             每个个体的目标函数值，即每个个体的总距离
function Obj=ObjFunction(Chrom,dist)
NIND=size(Chrom,1);                     %种群大小
Obj=zeros(NIND,1);                      %目标函数初始化为0
for i=1:NIND
    route=Chrom(i,:);                   %当前个体
    Obj(i,1)=RouteLength(route,dist);   %计算当前个体的总距离
end
end