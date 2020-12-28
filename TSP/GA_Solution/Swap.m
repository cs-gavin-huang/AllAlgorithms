%
%      @作者：随心390
%      @微信公众号：优化算法交流地
%

%比如说有6个城市，当前解为123456，我们随机选择两个位置，然后将这两个位置上的元素进行交换。
%比如说，交换2和5两个位置上的元素，则交换后的解为153426。

%输入route1：          路线1
%输出route2：          经过交换结构变换后的路线2
function route2=Swap(route1)
n=length(route1);
seq=randperm(n);
I=seq(1:2);
i1=I(1);
i2=I(2);
route2=route1;
route2([i1 i2])=route1([i2 i1]);
end