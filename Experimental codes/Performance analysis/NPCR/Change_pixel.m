clc;
clear;
format long;
%I=imread('Airplane256.bmp');
%I=imread('black.bmp');
I=imread('Airplane.bmp');
I(178,231,1)=I(178,231,1)-3;
% I(178,231,2)=255;
% I(178,231,3)=255;
 %I=mat2gray(I);
   %imwrite(I,'Airplane2561.bmp');
   %imwrite(I,'black1.bmp');
   imwrite(I,'Airplane999.bmp');
