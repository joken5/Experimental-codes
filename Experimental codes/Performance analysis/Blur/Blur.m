clc;
clear;
format long;
I=imread('black.bmp');
I1=I(:,:,1);I2=I(:,:,2);I3=I(:,:,3);
I3(12,11)=I3(12,11)-1;
% I3(222,13)=I3(222,13)-1;

% I3=imnoise(I3,'salt & pepper',0.0001);
% I=[I1,I2,I3];
I(:,:,1)=I1;
I(:,:,2)=I2;
I(:,:,3)=I3;

% imshow(I);
imwrite(I,'black-M.bmp');
% CC(:,:,1)=I(:,1:(N/3));
% CC(:,:,2)=I(:,(N/3+1):(2*N/3));
% CC(:,:,3)=I(:,(2*N/3+1):N);
