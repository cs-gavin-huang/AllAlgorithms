%
%      @���ߣ�����390
%      @΢�Ź��ںţ��Ż��㷨������
%
tic
clear
clc
%% ��������
x=[38.24,39.57,40.56,36.26,33.48,37.56,38.42,37.52,41.23,41.17,36.08,38.47,38.15,37.51,35.49,39.36,38.09,36.09,40.44,40.33,40.37,37.57];
y=[20.42,26.15,25.32,23.12,10.54,12.19,13.11,20.44,9.100,13.05,-5.210,15.13,15.35,15.17,14.32,19.56,24.36,23,13.57,14.15,14.23,22.56];
vertexs=[x;y]';
n=length(x);                    %������Ŀ
h=pdist(vertexs);
dist=squareform(h);             %�������
%% �Ŵ��㷨��������
NIND=50;                        %��Ⱥ��С
MAXGEN=1000;                    %��������
Pc=0.8;                         %�������
Pm=0.2;                         %�������
pSwap=0.2;                      %ѡ�񽻻��ṹ�ĸ���
pReversion=0.5;                 %ѡ����ת�ṹ�ĸ���
pInsertion=1-pSwap-pReversion;  %ѡ�����ṹ�ĸ���
N=n;                            %Ⱦɫ�峤��=������Ŀ
%% ��Ⱥ��ʼ��
Chrom=InitPop(NIND,N);
%% �Ż�
gen=1;                          %������
bestChrom=Chrom(1,:);           %��ʼȫ�����Ÿ���
bestL=RouteLength(bestChrom,dist);%��ʼȫ�����Ÿ�����ܾ���
BestChrom=zeros(MAXGEN,N);      %��¼ÿ�ε���������ȫ�����Ÿ���
BestL=zeros(MAXGEN,1);          %��¼ÿ�ε���������ȫ�����Ÿ�����ܾ���
while gen<=MAXGEN
    %��Ԫ������ѡ��
    SelCh=BinaryTourment_Select(Chrom,dist);
    %OX����
    SelCh=Recombin(SelCh,Pc);
    %����
    SelCh=Mutate(SelCh,Pm,pSwap,pReversion,pInsertion);
    %��Chrom����ΪSelCh
    Chrom=SelCh;
    %���㵱ǰ�����и����ܾ���
    Obj=ObjFunction(Chrom,dist);
    %�ҳ���ǰ�������Ÿ���
    [minObj,minIndex]=min(Obj);
    %����ǰ�������Ÿ�����ȫ�����Ÿ�����бȽϣ������ǰ�����Ÿ�����ã���ȫ�����Ÿ�������滻
    if minObj<=bestL
        bestChrom=Chrom(minIndex,:);
        bestL=minObj;
    end
    %��¼ÿһ��ȫ�����Ÿ��壬�����ܾ���
    BestChrom(gen,:)=bestChrom;
    BestL(gen,:)=bestL;
    %��ʾ���ѭ��ÿ�ε�������ȫ������·�ߵ��ܾ���
    disp(['��' num2str(gen) '�ε�����ȫ������·���ܾ��� = ' num2str(bestL)]);
    %����ÿ�ε�����ȫ������·��ͼ
    figure(1);
    PlotRoute(bestChrom,x,y)
    pause(0.01);
    %��������1
    gen=gen+1;
end
%% ��ӡÿ�ε�����ȫ�����Ÿ�����ܾ���仯����ͼ
figure;
plot(BestL,'LineWidth',1);
title('�Ż�����')
xlabel('��������');
ylabel('�ܾ���');
toc