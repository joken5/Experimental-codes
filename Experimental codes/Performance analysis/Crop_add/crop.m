clc;
clear;
format long;
I=imread('����Lena512.bmp');
I1=I(:,:,1);I2=I(:,:,2);I3=I(:,:,3);
%I=[I1,I2,I3];
[M,N]=size(I1);
%[M,N]=size(I2);
%[M,N]=size(I3);
I1(1:(1/2)*M,1:(1)*N)=0;
I2(1:(1/2)*M,1:(1)*N)=0;
I3(1:(1/2)*M,1:(1)*N)=0;
I=[I1,I2,I3];
CC(:,:,1)=I(:,1:M);
CC(:,:,2)=I(:,M+1:2*M);
CC(:,:,3)=I(:,2*M+1:3*M);
%J=imnoise(I,'gaussian',0,0.01);
%J=imnoise(I,'gaussian',0,0.005);
%J=imnoise(I,'gaussian',0,0.001);
imwrite(CC,'����Lena512-����2��֮һ.bmp');