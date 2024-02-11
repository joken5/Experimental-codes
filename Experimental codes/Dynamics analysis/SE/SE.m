%调用SampEn.m
clc;
clear;
j_max=300;
X1=zeros(1,j_max);
X2=zeros(1,j_max);
X3=zeros(1,j_max);
%收集信息熵
SE1=zeros(1,100);
SE2=zeros(1,100);
SE3=zeros(1,100);
R=[];%收集r
%
k0=9;
k=1;
r_max=10;%参数r
r_min=0;
h=100;
for r=linspace(r_min,r_max,h)
  x(1)=rand;
  y(1)=rand;
  z(1)=rand;
%   x_ini=[x1;x2;x3;r];%r在变化
  
  for j=2:j_max
%       x_ini=S2_quadratic_f(x_ini);
        x(j)=mod((2^(k0+x(j-1)))*r*((y(j-1)^2)+z(j-1)),1);
        y(j)=mod((3^(k0+y(j-1)))*r*((z(j-1)^2)+x(j-1)),1);
        z(j)=mod((5^(k0+z(j-1)))*r*((x(j-1)^2)+y(j-1)),1);
      
      X1(j)=x(j);
      X2(j)=y(j); 
      X3(j)=z(j);
  end
  %R=[R,r];
  k=k+1;
  %
  std_r1=0.2*std(X1);
  SE1(k)=r+SampEn(2,std_r1,X1,1)*i;

  std_r2=0.2*std(X2);
  SE2(k)=r+SampEn(2,std_r2,X2,1)*i;

   std_r3=0.2*std(X3);
  SE3(k)=r+SampEn(2,std_r3,X3,1)*i;
end

grid on;
hold on;
markersize=1;
% p1=plot(SE1,'.-','color',[0.1 0 0]);
% p2=plot(SE2,'.-','color',[0 0.1 0]);
% p3=plot(SE3,'.-','color',[0 0 0.1]);
% p4=plot(SE4,'.-','color',[0.5 0 0]);
% p5=plot(SE5,'.-','color',[0 0.5 0]);
% p6=plot(SE6,'.-','color',[0 0 0.5]);
% p7=plot(SE7,'.-','color',[1 0 0]);
% p8=plot(SE8,'.-','color',[0 1 0]);
% p9=plot(SE9,'.-','color',[0 0 1]);

% 
% p1=plot(SE1,'--rs','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor',[rand(),rand(),rand()],'MarkerSize',markersize);
% p2=plot(SE2,'--gs','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor',[rand(),rand(),rand()],'MarkerSize',markersize);
% p3=plot(SE3,'--bs','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor',[rand(),rand(),rand()],'MarkerSize',markersize);
 h4=plot(real(SE1),imag(SE1),'-rx','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','r','MarkerSize',3);
 hold on
 h5=plot(real(SE2),imag(SE2),'-b+','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','b','MarkerSize',3);
 hold on
 h6=plot(real(SE3),imag(SE3),'-g*','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',3);
% h4=plot(real(FE1),imag(FE1),'-rs','LineWidth',1,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',3);
% hold on
% h5=plot(real(FE2),imag(FE2),'-b+','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','b','MarkerSize',3);
% xlim([0 30]);
 %ylim([0 5.5]);
% xlabel('r','FontSize',16,'FontName','Times New Roman');
% ylabel('SEs','FontSize',16,'FontName','Times New Roman');
xlabel('r','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
ylabel('Sample entropy','FontSize',16,'FontName','Times New Roman','FontAngle','normal');
%图例
%ah=axes('position',get(gca,'position'),'visible','off');
LF=legend('x','y','z');
set(gca,'FontSize',16,'Fontname','Times New Roman'); 
grid on;