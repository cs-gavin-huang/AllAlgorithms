%
%      @作者：随心390
%      @微信公众号：优化算法交流地
%

%有6个城市，当前解为123456，我们随机选择两个位置，然后将这第一个位置上的元素插入到第二个元素后面。
%比如说，第一个选择5这个位置，第二个选择2这个位置，则插入后的解为125346。

%输入route1：          路线1
%输出route2：          经过插入结构变换后的路线2
function route2=Insertion(route1)
n=length(route1);
seq=randperm(n);
I=seq(1:2);
i1=I(1);
i2=I(2);
if i1<i2
    route2=route1([1:i1-1 i1+1:i2 i1 i2+1:end]);
else
    route2=route1([1:i2 i1 i2+1:i1-1 i1+1:end]);
end
end