clc;
clear;
format long;
% r=0:0.01:600;
%b=5;
N=100000;
r=6;
k=9;
x=zeros(1,N);y=zeros(1,N);z=zeros(1,N);
x(1)=rand();y(1)=rand();z(1)=rand();
% r=0:0.001:18;
for i=2:300
        x(i)=mod((2^(k+x(i-1)))*r*((y(i-1))^2+z(i-1)),1);
        y(i)=mod((3^(k+y(i-1)))*r*((z(i-1))^2+x(i-1)),1);
        z(i)=mod((5^(k+z(i-1)))*r*((x(i-1))^2+y(i-1)),1);
end 
    x(1)=x(300);y(1)=y(300);
for i=2:N
%   x(i)=mod(power(x(i-1),2)+(0.1-0.0001*(1+sum(y)))*y(i-1)-z(i-1),1);
%     y(i)=mod(z(i-1)-x(i-1)+power(y(i-1),2),1);
%      z(i)=mod(x(i-1)-y(i-1)+power(z(i-1),2),1);
%   x(i)=mod(r*(power(x(i-1),2)+(0.1-0.0001*(1+sum(y)))*y(i-1)-z(i-1)),1);
%     y(i)=mod(r*(z(i-1)-x(i-1)+power(y(i-1),2)),1);
%      z(i)=mod(r*(x(i-1)-y(i-1)+power(z(i-1),2)),1);
        x(i)=mod((2^(k+x(i-1)))*r*((y(i-1))^2+z(i-1)),1);
        y(i)=mod((3^(k+y(i-1)))*r*((z(i-1))^2+x(i-1)),1);
        z(i)=mod((5^(k+z(i-1)))*r*((x(i-1))^2+y(i-1)),1);
end 

plot3(x,y,z,'b.','MarkerSize',2);
% title('S-3D phase')
xlim([0 1]);
% ylim([0 a]);
% zlim([0 a]);
xlabel('x_i','fontsize',16,'Fontname','Times New Roman','FontAngle','italic');
ylabel('y_i','fontsize',16,'Fontname','Times New Roman','FontAngle','italic');
zlabel('z_i','fontsize',16,'Fontname','Times New Roman','FontAngle','italic');
set(gca,'FontSize',18,'Fontname','Times New Roman');

