clc;
clear;
%cd F:Dissertation代码图片
%读取改变了原图的加密图
image1=imread('加密Lena5122.bmp');
%读取未改变原图的加密图
image2=imread('加密Lena512.bmp');
% I1=image1(:,:,1);I2=image1(:,:,2);I3=image1(:,:,3);
% image1=[I1,I2,I3];
% I4=image2(:,:,1);I5=image2(:,:,2);I6=image2(:,:,3);
% image2=[I1,I2,I3];
%显示图片
% image1=rgb2gray(image1);
% image2=rgb2gray(image2);

% subplot(1,2,1),imshow(image2),title('原图像')
% subplot(1,2,2),imshow(image1),title('改变后图像')
%将uint8转化为双精度类型
image1=double(image1);
image2=double(image2);
[M,N]=size(image1);
%两加密图灰度值相减并求绝对值
B=abs(image1-image2)./255;
m=sum(sum(B));
UAC=m/(M.*N);
UAC=sum(UAC);
disp(UAC);

