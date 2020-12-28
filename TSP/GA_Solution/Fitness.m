%
%      @作者：随心390
%      @微信公众号：优化算法交流地
%
%% 计算每个个体的适应度值，即总距离的倒数    
%输入Obj：     每个个体的总距离
%输出FitnV：   每个个体的适应度值，即总距离的倒数
function FitnV=Fitness(Obj)
FitnV=1./Obj;