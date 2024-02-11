%画像素分布图
clc;
clear;
PS=imread('加密black.bmp');
%PS=imread('lena256加密后的图像.bmp');
%PS=imread('pepper256加密后的图像.bmp');
[m,n,c]=size(PS);   
uu1=ones(size(PS(1:3:m-1,2:3:n,1)));
uu2=ones(size(PS(1:3:m-1,2:3:n,2)))*2;
uu3=uu1*3;

figure;
hold on;
xlim([1 3]);
ylim([0 255]);
zlim([0 255]);
plot3(uu1,PS(1:3:m-1,2:3:n,1),PS(2:3:m,2:3:n,1),'r.','MarkerSize',5);
set(gca,'FontSize',18,'Fontname','Times New Roman');  
% title('Horizontal')
% ylabel('Grey values on location \rm(\itx,\ity\rm)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% ylabel('Grey values on location \rm(\itx,\ity\rm)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% zlabel('Grey values on location \rm(\itx\rm+\rm1,\ity\rm)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');

% axis([0 255 0 255])
% hold off;

% hold on;
plot3(uu2,PS(1:3:m-1,2:3:n,2),PS(2:3:m,2:3:n,2),'g.','MarkerSize',5);
% title('G-Horizontal')
% ylabel('Grey values on location \rm(\itx,\ity\rm)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% zlabel('Grey values on location \rm(\itx\rm+\rm1,\ity\rm)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');

% axis([0 255 0 255])
% hold off;
% figure;
hold on;      
plot3(uu3,PS(1:3:m-1,2:3:n,3),PS(2:3:m,2:3:n,3),'b.','MarkerSize',5);
set(gca,'FontSize',18,'Fontname','Times New Roman');  
% title('B-Horizontal')
% xlabel('Grey values on location \rm(\itx,\ity\rm)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% ylabel('Grey values on location \rm(\itx\rm+\rm1,\ity\rm)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');

% axis([0 255 0 255])
% hold on;
 hold off;








uuu1=ones(size(PS(1:3:m,1:3:n-1,1)));
uuu2=uuu1*2;
uuu3=uuu1*3;
figure;
xlim([1 3]);
ylim([0 255]);
zlim([0 255]);
hold on;
plot3(uuu1,PS(1:3:m,1:3:n-1,1),PS(1:3:m,2:3:n,1),'r.','MarkerSize',5);
% title('Vertical')
% ylabel('Grey values on location \rm(\itx,\ity\rm)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% zlabel('Grey values on location \rm(\itx,\ity\rm+\rm1\rm)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% axis([0 255 0 255])
% hold off;
% figure;
hold on;
plot3(uuu2,PS(1:3:m,1:3:n-1,2),PS(1:3:m,2:3:n,2),'g.','MarkerSize',5);
% title('G-Vertical')
% xlabel('Grey values on location \rm(\itx,\ity\rm)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% ylabel('Grey values on location \rm(\itx,\ity\rm+\rm1\rm)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');

% axis([0 255 0 255])
% hold off;
% figure;
hold on;

plot3(uuu3,PS(1:3:m,1:3:n-1,3),PS(1:3:m,2:3:n,3),'b.','MarkerSize',5);
set(gca,'FontSize',18,'Fontname','Times New Roman');  
% title('B-Vertical')
% xlabel('Grey values on location \rm(\itx,\ity\rm)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% ylabel('Grey values on location \rm(\itx,\ity\rm+\rm1\rm)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% axis([0 255 0 255])
hold off;
figure;
xlim([1 3]);
ylim([0 255]);
zlim([0 255]);
hold on;
plot3(uu1,PS(1:3:m-1,1:3:n-1,1),PS(2:3:m,2:3:n,1),'r.','MarkerSize',5);
set(gca,'FontSize',18,'Fontname','Times New Roman');  
% title('Diagonal')
% ylabel('Grey values on location \rm(\itx,\ity\rm)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% zlabel('Grey values on location \rm(\itx\rm+\rm1,\ity\rm+\rm1)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');

% axis([0 255 0 255])
% hold off;
% figure;
hold on;
plot3(uu2,PS(1:3:m-1,1:3:n-1,2),PS(2:3:m,2:3:n,2),'g.','MarkerSize',5);
% title('G-Diagonal')
% xlabel('Grey values on location \rm(\itx,\ity\rm)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% ylabel('Grey values on location \rm(\itx\rm+\rm1,\ity\rm+\rm1)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% hold off;
% figure;
hold on;
plot3(uu3,PS(1:3:m-1,1:3:n-1,3),PS(2:3:m,2:3:n,3),'b.','MarkerSize',5);
% title('B-Diagonal')
% xlabel('Grey values on location \rm(\itx,\ity\rm)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% ylabel('Grey values on location \rm(\itx\rm+\rm1,\ity\rm+\rm1)','FontSize',16,'FontName','Times New Roman','FontAngle','italic');
% axis([0 255 0 255])
hold off;
set(gca,'FontSize',18,'Fontname','Times New Roman');  


