%
%      @���ߣ�����390
%      @΢�Ź��ںţ��Ż��㷨������
%
%% ��Ⱥ��ʼ��
%����NIND��        ��Ⱥ��С
%����N��           Ⱦɫ�峤��
%���Chrom��       ������ɵĳ�ʼ��Ⱥ
function Chrom=InitPop(NIND,N)
Chrom=zeros(NIND,N);                %��Ⱥ��ʼ��ΪNIND��N�е������
for i=1:NIND
    Chrom(i,:)=randperm(N);         %ÿ������Ϊ1~N���������
end
end