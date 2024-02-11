clear all
clc;
%一，图像的预处理，读入彩色图像将其灰度化
%PS=imread('miw.bmp');%读入JPG彩色图像文件
PS=imread('加密black.bmp');
%PS=imread('airplane512.bmp');
%PS=imread('image1_512.bmp');
%PS=imread('airplane512加密后的图像.bmp');

%PS=imread('airplane512加密后的图像.bmp');

% imshow(PS)                                 %显示出来
%title('输入的彩色JPG图像')
% title('输入的真彩色BMP图像')
% imwrite(rgb2gray(PS),'PicSampleGray.bmp'); %将彩色图片灰度化并保存
% PS=rgb2gray(PS);                           %灰度化后的数据存入数组

%二，绘制直方图
[m,n,c]=size(PS);
t=600;%测量图像尺寸参数
GP_R=zeros(1,256);                            %预创建存放灰度出现概率的向量
 GP_G=zeros(1,256);
 GP_B=zeros(1,256);
for k=0:255
    GP_R(k+1)=length(find(PS(:,:,1)==k));     %计算每级灰度出现的概率，将其存入GP中相应位置
end
x=0:255;
 %figure;

bar(x,GP_R,0.5,'r');%绘制直方图,0.1是竖线宽度，默认0.8.为什么颜色不能改变？
%title('Red component','fontsize',16,'FontAngle','italic');
xlim([0 250]);
ylim([0 t]);
%ylim([0 1200]);
% xlabel('Pixel value','fontsize',16,'FontAngle','italic');
% ylabel('Distribution','fontsize',16,'FontAngle','italic');
  xlabel('Gray scale of red component','fontsize',16,'Fontname','Times New Roman','FontAngle','normal');
  ylabel('Distribution','fontsize',16,'Fontname','Times New Roman','FontAngle','normal');
hold on;
 for k=0:255
     GP_G(k+1)=length(find(PS(:,:,2)==k));     %计算每级灰度出现的概率，将其存入GP中相应位置
 end
 x=0:255;
 % figure,
 bar(x,GP_G,0.5,'g');%绘制直方图,0.1是竖线宽度，默认0.8.为什么颜色不能改变？
% %title('Green component','fontsize',16,'FontAngle','italic');
 xlim([0 255]);
 ylim([0 t]);
% %ylim([0 1200]);
%  xlabel('Gray scale of green component','fontsize',16,'FontAngle','italic');
%   ylabel('Distribution','fontsize',16,'FontAngle','italic');
% 
xlabel('Gray scale of green component','fontsize',16,'Fontname','Times New Roman','FontAngle','normal');
  ylabel('Distribution','fontsize',16,'Fontname','Times New Roman','FontAngle','normal');
hold on;
 for k=0:255
     GP_B(k+1)=length(find(PS(:,:,3)==k));     %计算每级灰度出现的概率，将其存入GP中相应位置
 end
 x=0:255;
 % figure,
 bar(x,GP_B,0.5,'b');%绘制直方图,0.1是竖线宽度，默认0.8.为什么颜色不能改变？
% %title('Blue component','fontsize',16,'FontAngle','italic');
xlim([0 255]);
ylim([0 t]);
% %ylim([0 1200]);
%  xlabel('Gray scale of blue component','fontsize',16,'FontAngle','italic');
%  ylabel('Distribution','fontsize',16,'FontAngle','italic');
xlabel('Gray scale of blue component','fontsize',16,'Fontname','Times New Roman','FontAngle','normal');
ylabel('Distribution','fontsize',16,'Fontname','Times New Roman','FontAngle','normal');
  set(gca,'FontSize',18,'Fontname','Times New Roman');