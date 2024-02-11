clc;
clear;
format long; 
%r=17;
k=9;
X=[];
Y=[];
Z=[];
T1=[];T2=[];T3=[];
% x=rand();
% y=rand();
% z=rand();
% w=rand();
xm=rand;ym=rand;zm=rand;
jj=1600;
r_max=10;
r_min=0.1;
inter=0.05;
for r=linspace(0.1,10,120)
for j=1:jj    
%     x=mod(r*power(2,k)*(x*y+y*z),1);
%     y=mod(r*power(3,k)*(sin(pi*y)-z*w),1);
%     z=mod(r*power(5,k)*(cos(z*pi)+x*w),1); 
%     w=mod(r*power(7,k)*(w*w-x*y),1); 
        x=mod((2^(k+xm))*r*(ym^2+zm),1);
        y=mod((3^(k+ym))*r*(zm^2+xm),1);
        z=mod((5^(k+zm))*r*(xm^2+ym),1);
    X=[X,x+r*i]; 
     xm=x;
  ym=y;
  zm=z;
end
    [logCr1,logr1]=gencorint(real(X(1:jj)),3);
% for j=2:20
% (logCr1(j)-logCr1(j-1))/(logr1(j)-logr1(j-1));
% end
t=polyfit(logr1,logCr1,1);%第一个数是斜率，相对于y=kx+b中的k，就是关联维数
t1=t(:,1);
TF=isinf(t1);
if TF~=1
   T1=[T1,t1+r*i];
else
  xm=rand();
  ym=rand();
  zm=rand();
  
end
%
X=[];
end
% markersize=3;
plot(imag(T1),real(T1),'-rx','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','r','MarkerSize',3);
% plot(imag(T1),real(T1),'-rs','LineWidth',1,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',3);
xlabel('r','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
ylabel('Correlation dimension','FontSize',16,'FontName','Times New Roman','FontAngle','normal');
 xlim([0 10]);
ylim([1 3.5]);
% x=rand();
% y=rand();
% z=rand();
% w=rand();
xm=rand;ym=rand;zm=rand;
for r=linspace(0.1,10,120)
for j=1:jj   
        x=mod((2^(k+xm))*r*(ym^2+zm),1);
        y=mod((3^(k+ym))*r*(zm^2+xm),1);
        z=mod((5^(k+zm))*r*(xm^2+ym),1);
    Y=[Y,y+r*i]; 
  xm=x;
  ym=y;
  zm=z;
end
    [logCr2,logr2]=gencorint(real(Y(1:jj)),3);
tt=polyfit(logr2,logCr2,1);%第一个数是斜率，相对于y=kx+b中的k，就是关联维数
t2=tt(:,1);
TF1=isinf(t2);
if TF1~=1
   T2=[T2,t2+r*i];
else
  xm=rand();
  ym=rand();
  zm=rand();
 
end
%
Y=[];
end
hold on
plot(imag(T2),real(T2),'-b+','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','b','MarkerSize',3);
% plot(imag(T2),real(T2),'-g+','LineWidth',1,'MarkerEdgeColor','g','MarkerFaceColor','g','MarkerSize',3);
% x=rand();
% y=rand();
% z=rand();
% w=rand();
xm=rand;ym=rand;zm=rand;
for r=linspace(0.1,10,120)
for j=1:jj    
%     x=mod(r*power(2,k)*(x*y+y*z),1);
%     y=mod(r*power(3,k)*(sin(pi*y)-z*w),1);
%     z=mod(r*power(5,k)*(cos(z*pi)+x*w),1); 
%     w=mod(r*power(7,k)*(w*w-x*y),1); 
        x=mod((2^(k+xm))*r*(ym^2+zm),1);
        y=mod((3^(k+ym))*r*(zm^2+xm),1);
        z=mod((5^(k+zm))*r*(xm^2+ym),1);
    Z=[Z,z+r*i]; 
     xm=x;
  ym=y;
  zm=z;
end
    [logCr3,logr3]=gencorint(real(Z(1:jj)),3);
%     [logCr2,logr2]=gencorint(real(Y(1:jj)),3);
%     [logCr3,logr3]=gencorint(real(Z(1:jj)),3);
%     [logCr4,logr4]=gencorint(real(W(1:jj)),3);
% for j=2:20
% (logCr1(j)-logCr1(j-1))/(logr1(j)-logr1(j-1));
% end
ttt=polyfit(logr3,logCr3,1);%第一个数是斜率，相对于y=kx+b中的k，就是关联维数
t3=ttt(:,1);
TF3=isinf(t3);
if TF3~=1
   T3=[T3,t3+r*i];
else
  xm=rand();
  ym=rand();
  zm=rand();
  
end
%
Z=[];
end
hold on
plot(imag(T3),real(T3),'-g*','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',3);
% plot(imag(T3),real(T3),'-bp','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','b','MarkerSize',3);
% x=rand();
% y=rand();
% z=rand();
% w=rand();
LF=legend('x','y','z','vertical');
set(gca,'FontSize',16,'Fontname','Times New Roman');
grid on;
