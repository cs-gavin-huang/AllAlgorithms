%% 变异操作
%输入SelCh：           被选择的个体
%输入Pm：              变异概率
%输入pSwap：           选择交换结构的概率
%输入pReversion：      选择逆转结构的概率
%输入pInsertion：      选择插入结构的概率
%输出SelCh：           变异后的个体
function SelCh=Mutate(SelCh,Pm,pSwap,pReversion,pInsertion)
NSel=size(SelCh,1);
for i=1:NSel
    if Pm>=rand
        index=Roulette(pSwap,pReversion,pInsertion);
        route1=SelCh(i,:);
        if index==1
            %交换结构
            route2=Swap(route1);
        elseif index==2
            %逆转结构
            route2=Reversion(route1);
        else
            %插入结构
            route2=Insertion(route1);
        end
        SelCh(i,:)=route2;
    end
end