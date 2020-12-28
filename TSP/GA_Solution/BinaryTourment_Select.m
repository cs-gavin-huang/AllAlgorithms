%
%      @���ߣ�����390
%      @΢�Ź��ںţ��Ż��㷨������
%
%% ��Ԫ������ѡ��
%����Chrom��           ��Ⱥ
%����dist��            �������
%���Selch��           ��Ԫ������ѡ����ĸ���
function Selch=BinaryTourment_Select(Chrom,dist)
Obj=ObjFunction(Chrom,dist);            %������ȺĿ�꺯��ֵ����ÿ��������ܾ���
FitnV=Fitness(Obj);                     %����ÿ���������Ӧ��ֵ�����ܾ���ĵ���
[NIND,N]=size(Chrom);                   %NIND-��Ⱥ������N-��Ⱥ����
Selch=zeros(NIND,N);                    %��ʼ����Ԫ������ѡ����ĸ���
for i=1:NIND
    R=randperm(NIND);                   %����һ��1~NIND���������
    index1=R(1);                        %��һ���Ƚϵĸ������
    index2=R(2);                        %�ڶ����Ƚϵĸ������
    fit1=FitnV(index1,:);               %��һ���Ƚϵĸ������Ӧ��ֵ����Ӧ��ֵԽ��˵����������Խ�ߣ�
    fit2=FitnV(index2,:);               %�ڶ����Ƚϵĸ������Ӧ��ֵ
    %�������1����Ӧ��ֵ ���ڵ��� ����2����Ӧ��ֵ���򽫸���1��Ϊ��iѡ����ĸ���
    if fit1>=fit2
        Selch(i,:)=Chrom(index1,:);
    else
        %�������1����Ӧ��ֵ С�� ����2����Ӧ��ֵ���򽫸���2��Ϊ��iѡ����ĸ���
        Selch(i,:)=Chrom(index2,:);
    end
end
end