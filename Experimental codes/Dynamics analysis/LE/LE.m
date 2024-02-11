clc;
clear;
   d0=1e-8;
   %Z=[];
   R=[];
% A=[];
   LE=[];
   R1=[];
% A1=[];
   LE1=[];
   X=[];
   X1=[];
   X2=[];
   LE2=[];
   R2=[];
    X3=[];
   LE3=[];
   R3=[];
% A2=[];
   r_max=10;
   r_min=0;
%    a_max=6;
%    a_min=1;
   for r=linspace(r_min,r_max,800)
%      for a=linspace(a_min,a_max,800)
       le=0;
       lsum=0;
       tmpx=rand();
       tmpy=rand();
       tmpz=rand();
       x=[tmpx;tmpy;tmpz;r];
       x1=[tmpx+d0;tmpy;tmpz;r];
%        x=[tmpx;tmpy;tmpz;a];
%        x1=[tmpx+d0;tmpy;tmpz;a];
      for k=1:800
           x=HCM_f(x);
           x1=HCM_f(x1);
           
           d1=sqrt((x(1,1)-x1(1,1))^2); 
           x1=x+(d0/d1)*(x1-x);
           if k>100
               lsum=lsum+log(d1/d0);
           end
       end
       le=lsum/(k-100);
       X=[X,r+le*i]; % i是复数
     
%         X=[X,a+le*i]
   end
  
 h4=plot(X,'r');
  grid on;
  xlim([r_min r_max]);

xlabel('\itr','fontsize',18,'Fontname','Times New Roman');
ylabel('Lyapunov exponents','fontsize',18,'Fontname','Times New Roman');
set(gca,'FontSize',18,'Fontname','Times New Roman');  %是设置刻度字体大小，纵横坐标标注也起作用

% xlabel('r','fontsize',16,'FontAngle','italic');
% ylabel('LEs','fontsize',16,'FontAngle','italic');
 for r1=linspace(r_min,r_max,800)
%    for a1=linspace(a_min,a_max,800)
       le1=0;
       
       lsum1=0;
       tmpx=rand();
       tmpy=rand();
       tmpz=rand();
       x=[tmpx;tmpy;tmpz;r1];
       x1=[tmpx;tmpy+d0;tmpz;r1];
%        x=[tmpx;tmpy;tmpz;a1];
%        x1=[tmpx;tmpy+d0;tmpz;a1];
      for k=1:800
           x=HCM_f(x);
           x1=HCM_f(x1);
           d2=sqrt((x(2,1)-x1(2,1))^2);
           x=x1+(d0/d2)*(x-x1);

           if k>100
               lsum1=lsum1+log(d2/d0);
           end
       end
       le1=lsum1/(k-100);
       X1=[X1,r1+le1*i]; % i是复数
       
%        X1=[X1,a1+le1*i];
end
   hold on;
   
   h5=plot(X1,'g');
   
   grid on;
 %xlim([a_min a_max]);
xlim([r_min r_max]);

for r2=linspace(r_min,r_max,800)
% for a2=linspace(a_min,a_max,800)  
       le2=0;
       
       lsum2=0;
       tmpx=rand();
       tmpy=rand();
       tmpz=rand();
       x=[tmpx;tmpy;tmpz;r2];
       x1=[tmpx;tmpy;tmpz+d0;r2];
%        x=[tmpx;tmpy;tmpz;a2];
%        x1=[tmpx;tmpy;tmpz+d0;a2];
      for k=1:800
           x=HCM_f(x);
           x1=HCM_f(x1);
           d3=sqrt((x(3,1)-x1(3,1))^2);
           x=x1+(d0/d3)*(x-x1);

           if k>100
               lsum2=lsum2+log(d3/d0);
           end
       end
       le2=lsum2/(k-100);
       X2=[X2,r2+le2*i];    
%        X2=[X2,a2+le2*i];
end
 hold on;
h6=plot(X2,'b');
 grid on;
xlim([r_min r_max]);

% ah=axes('position',get(gca,'position'),'visible','off');

% hold on;
%=0;u_max=4;
for r3=linspace(r_min,r_max,800)
%      for a=linspace(a_min,a_max,800)
       le3=0;
       lsum3=0;
       tmpx=rand();
       tmpy=rand();
       tmpz=rand();
       x=[tmpx;tmpy;tmpz;r3];
       x1=[tmpx+d0;tmpy;tmpz;r3];

      for k=1:800
           x=HCM_f(x);
           x1=HCM_f(x1);
           
           d4=sqrt((x(1,1)-x1(1,1))^2); 
           x1=x+(d0/d4)*(x1-x);
           if k>100
               lsum3=lsum3+log(d4/d0);
           end
       end
       le3=lsum3/(k-100);
       X3=[X3,r3+le3*i]; % i是复数
     
%         X=[X,a+le*i]
   end
  
 h7=plot(X3,'r');
%legend([h4,h5,h6],'x','y','z','orientation','horizontal');
LF=legend('x','y','z');



hold on;
% 
% 
set(gca,'FontSize',16,'Fontname','Times New Roman'); 