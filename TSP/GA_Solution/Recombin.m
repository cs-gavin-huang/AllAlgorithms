%
%      @���ߣ�����390
%      @΢�Ź��ںţ��Ż��㷨������
%
%% �������
% ����
%SelCh  ��ѡ��ĸ���
%Pc     �������
%�����
% SelCh �����ĸ���
function SelCh=Recombin(SelCh,Pc)
NSel=size(SelCh,1);
for i=1:2:NSel-mod(NSel,2)
    if Pc>=rand %�������Pc
        [SelCh(i,:),SelCh(i+1,:)]=OX(SelCh(i,:),SelCh(i+1,:));
    end
end

