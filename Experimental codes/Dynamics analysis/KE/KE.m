clc;
clear;

%k=0.1;%2019��2��6�� ���������ﵽ����1022.78965432235311
format long;
x=rand();
y=rand();
z=rand();
X=[];
Y=[];
Z=[];
KE_CIQM_X=[];
KE_CIQM_Y=[];
KE_CIQM_Z=[];
% k1=9;
% k2=17;

% k1=19;
% k2=23;
k=9;
n=3;
nke=12000;%��KolmogorovEntropy.m�е�nk���
% k1=5;
% k2=7;
%Coupling improved quadratic map(CIQM)
for r=linspace(0.01,10,90)
    
  for j=1:nke
        x=mod((2^k+x)*r*(y^2+z),1);
        y=mod((3^k+y)*r*(z^2+x),1);
        z=mod((5^k+z)*r*(x^2+y),1);
    X=[X,x+r*i];
    Y=[Y,y+r*i];
    Z=[Z,z+r*i];
  end;
  %ȡʵ������
  ke_ciqm_x=KolmogorovEntropy(real(X(1:nke)));
  KE_CIQM_X=[KE_CIQM_X,ke_ciqm_x+r*i];
  ke_ciqm_y=KolmogorovEntropy(real(Y(1:nke)))
  KE_CIQM_Y=[KE_CIQM_Y,ke_ciqm_y+r*i];
  ke_ciqm_z=KolmogorovEntropy(real(Z(1:nke)))
  KE_CIQM_Z=[KE_CIQM_Z,ke_ciqm_z+r*i];

  X=[];
  Y=[];
  Z=[];
end

%plot(KE,'b.','markersize',12);

%������classic quadratic map(CQM)��
% KE_CQM=[];
% for r=0:1:10
%   for j=1:nke
%      x=r-power(x,2);
%      X=[X,x+r*i];
%   end;
%   %ȡʵ������
%   ke_cqm=KolmogorovEntropy(real(X(1:nke)));
%   KE_CQM=[KE_CQM,ke_cqm+r*i];
%   X=[];
% end

%������Chebyshev��
% x=rand();
% X=[];
% KE_Chebyshev=[];
% for r=0.1:0.1:2
%   for j=1:nke
%      %x=r-power(x,2);
%      x=cos(r*acos(x));     
%      X=[X,x+r*i];
%   end;
%   %ȡʵ������
%   ke_chebyshev=KolmogorovEntropy(real(X(1:nke)));
%   KE_Chebyshev=[KE_Chebyshev,ke_chebyshev+r*i];
%   X=[];
% end

%KE_X��KE_Y�����ص�����һ��
h1=plot(imag(KE_CIQM_X),real(KE_CIQM_X),'-rx','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','r','MarkerSize',3);
hold on;
h2=plot(imag(KE_CIQM_Y),real(KE_CIQM_Y),'-b+','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','b','MarkerSize',3);
hold on;
h3=plot(imag(KE_CIQM_Z),real(KE_CIQM_Z),'-g*','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',3);
% %h3=plot(imag(KE_CQM),real(KE_CQM),'-r+','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',10);
% hold on;
% h4=plot(imag(KE_Chebyshev),real(KE_Chebyshev),'-b+','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','b','MarkerSize',10);

xlim([0 10]);
ylim([0.75 0.9]);
xlabel('r','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
ylabel('Kolmogorov entropy','FontSize',16,'FontName','Times New Roman','FontAngle','normal');
set(gca,'FontSize',18,'Fontname','Times New Roman');  %�����ÿ̶������С���ݺ������עҲ������


%ͼ��
LF=legend('x','y','z');
set(gca,'FontSize',16,'Fontname','Times New Roman'); 
grid on;