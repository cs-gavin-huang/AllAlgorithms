%
%      @���ߣ�����390
%      @΢�Ź��ںţ��Ż��㷨������
%
%% �������
%����SelCh��           ��ѡ��ĸ���
%����Pm��              �������
%����pSwap��           ѡ�񽻻��ṹ�ĸ���
%����pReversion��      ѡ����ת�ṹ�ĸ���
%����pInsertion��      ѡ�����ṹ�ĸ���
%���SelCh��           �����ĸ���
function SelCh=Mutate(SelCh,Pm,pSwap,pReversion,pInsertion)
NSel=size(SelCh,1);
for i=1:NSel
    if Pm>=rand
        index=Roulette(pSwap,pReversion,pInsertion);
        route1=SelCh(i,:);
        if index==1
            %�����ṹ
            route2=Swap(route1);
        elseif index==2
            %��ת�ṹ
            route2=Reversion(route1);
        else
            %����ṹ
            route2=Insertion(route1);
        end
        SelCh(i,:)=route2;
    end
end