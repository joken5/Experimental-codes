clc;
clear;
format long;
I=imread('����Airplane.bmp');
k=0.015;
J=imnoise(I,'salt & pepper',k);
%J=imnoise(I,'gaussian',0,0.01);
%J=imnoise(I,'gaussian',0,0.005);
%J=imnoise(I,'gaussian',0,0.001);
imwrite(J,'����Airplane����0.015��������.bmp');