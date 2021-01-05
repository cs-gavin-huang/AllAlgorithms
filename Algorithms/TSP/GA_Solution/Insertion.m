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