%clf;
clc;
clear all;
x=zeros(1,501);y=zeros(1,501);z=zeros(1,501);
 x(1)=rand;y(1)=rand;z(1)=rand;
% x1(1)=-0.094504859051523;
% 
% x2(1) =-0.277741800429319;
% 
% x3(1)=0.996631301242528;
% 
% x4(1)=0.992603268445592;
% 
% x5(1) =0.156286391533817;
% 
% x6(1)= -0.429930094592426;
X=[];Y=[];Z=[];

k=9;

N=60000;
r_max=10;
%for r=linspace(1,18,700);
r=linspace(0.01,r_max,N);

for i=1:500

        x(i+1)=mod((2^(k+x(i)))*r(i).*((y(i)^2)+z(i)),1);
        y(i+1)=mod((3^(k+y(i)))*r(i).*((z(i)^2)+x(i)),1);
        z(i+1)=mod((5^(k+z(i)))*r(i).*((x(i)^2)+y(i)),1);
end
 x(1)=x(500);y(1)=y(500);z(1)=z(500);

for i=1:N
    
        x(i+1)=mod((2^(k+x(i)))*r(i).*((y(i)^2)+z(i)),1);
        y(i+1)=mod((3^(k+y(i)))*r(i).*((z(i)^2)+x(i)),1);
        z(i+1)=mod((5^(k+z(i)))*r(i).*((x(i)^2)+y(i)),1);
end

% plot(x1,'b.','markersize',2);
% xlabel('n','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% ylabel('x','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% grid on;
% figure;
% plot(x2,'b.','markersize',2);
% xlabel('n','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% ylabel('y','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% grid on;
figure;
plot3(r,x(1:N),y(1:N),'b.','markersize',2);
xlabel('\itr','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
ylabel('x_i','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
zlabel('y_i','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
set(gca,'FontSize',18,'Fontname','Times New Roman');  %是设置刻度字体大小
grid on;
xlim([0 r_max]);

% figure;
% plot3(r,x3(1:N),x4(1:N),'b.','markersize',2);
% xlabel('\gamma','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% ylabel('x_3','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% zlabel('x_4','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% grid on;
% xlim([0 r_max]);

figure;
plot3(r,x(1:N),z(1:N),'b.','markersize',2);
xlabel('\itr','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
ylabel('x_i','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
zlabel('z_i','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
set(gca,'FontSize',18,'Fontname','Times New Roman');  %是设置刻度字体大小
grid on;
xlim([0 r_max]);
figure;
plot3(r,y(1:N),z(1:N),'b.','markersize',2);
xlabel('\itr','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
ylabel('y_i','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
zlabel('z_i','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
set(gca,'FontSize',18,'Fontname','Times New Roman');  %是设置刻度字体大小
grid on;
xlim([0 r_max]);
% figure;
% plot3(r,x5(1:N),x6(1:N),'b.','markersize',2);
% xlabel('\gamma','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% ylabel('x_5','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% zlabel('x_6','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% grid on;
% xlim([0 r_max]);
% % figure;
% plot3(x2,x3,x4,'b.','markersize',2);
% xlabel('x_2','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% ylabel('x_3','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% zlabel('x_4','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% grid on;
% 
% figure;
% plot3(x3,x4,x5,'b.','markersize',2);
% xlabel('x_3','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% ylabel('x_4','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% zlabel('x_5','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% grid on;
% 
% figure;
% plot3(x4,x5,x6,'b.','markersize',2);
% xlabel('x_4','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% ylabel('x_5','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% zlabel('x_6','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% grid on;
% 
