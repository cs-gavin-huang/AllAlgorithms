%
%      @���ߣ�����390
%      @΢�Ź��ںţ��Ż��㷨������
%
%% ������ȺĿ�꺯��ֵ����ÿ��������ܾ���
%����Chrom��           ��Ⱥ
%����dist��            �������
%���Obj��             ÿ�������Ŀ�꺯��ֵ����ÿ��������ܾ���
function Obj=ObjFunction(Chrom,dist)
NIND=size(Chrom,1);                     %��Ⱥ��С
Obj=zeros(NIND,1);                      %Ŀ�꺯����ʼ��Ϊ0
for i=1:NIND
    route=Chrom(i,:);                   %��ǰ����
    Obj(i,1)=RouteLength(route,dist);   %���㵱ǰ������ܾ���
end
end