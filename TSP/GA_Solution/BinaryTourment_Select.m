%
%      @作者：随心390
%      @微信公众号：优化算法交流地
%
%% 二元锦标赛选择
%输入Chrom：           种群
%输入dist：            距离矩阵
%输出Selch：           二元锦标赛选择出的个体
function Selch=BinaryTourment_Select(Chrom,dist)
Obj=ObjFunction(Chrom,dist);            %计算种群目标函数值，即每个个体的总距离
FitnV=Fitness(Obj);                     %计算每个个体的适应度值，即总距离的倒数
[NIND,N]=size(Chrom);                   %NIND-种群个数、N-种群长度
Selch=zeros(NIND,N);                    %初始化二元锦标赛选择出的个体
for i=1:NIND
    R=randperm(NIND);                   %生成一个1~NIND的随机排列
    index1=R(1);                        %第一个比较的个体序号
    index2=R(2);                        %第二个比较的个体序号
    fit1=FitnV(index1,:);               %第一个比较的个体的适应度值（适应度值越大，说明个体质量越高）
    fit2=FitnV(index2,:);               %第二个比较的个体的适应度值
    %如果个体1的适应度值 大于等于 个体2的适应度值，则将个体1作为第i选择出的个体
    if fit1>=fit2
        Selch(i,:)=Chrom(index1,:);
    else
        %如果个体1的适应度值 小于 个体2的适应度值，则将个体2作为第i选择出的个体
        Selch(i,:)=Chrom(index2,:);
    end
end
end