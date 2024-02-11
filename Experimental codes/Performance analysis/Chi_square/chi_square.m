clc;
clear;
%P=imread('lena256.bmp');
%P=imread('pepper256.bmp');
%P=imread('airplane256.bmp');
%P=imread('image1_512.bmp');
%P=imread('image2_512.bmp');
%P=imread('image3_512.bmp');

%P=imread('black0_256.bmp');
%P=imread('black0_256.bmpS盒2次替换和异或后的图像.bmp');

%P=imread('white0_256.bmp');
%P=imread('white0_256.bmpS盒2次替换和异或后的图像.bmp');

%P=imread('image1.bmpS盒2次替换和异或后的图像.bmp');
%P=imread('image2.bmpS盒2次替换和异或后的图像.bmp');
%P=imread('image3.bmpS盒2次替换和异或后的图像.bmp');

%P=imread('airplane256.bmpS盒2次替换和异或后的图像.bmp');
P=imread('加密Lena512.bmp');
%P=imread('pepper256.bmpS盒2次替换和异或后的图像.bmp');

%P=imread('xor加密后的图像_airplane256.bmp');
%
%P=imread('cirshift再次加密后的图像_lena512.bmp');
%P=imread('xor加密后的图像_lena256.bmp');

%P=imread('xor加密后的图像_pepper256.bmp');

%P=imread('cirshift再次加密后的图像_image1.bmp');

%P=imread('xor加密后的图像_lena512.bmp');
%P=imread('image2加密后的图像.bmp');
%P=imread('image3加密后的图像.bmp');

P1=P(:,:,1);
P2=P(:,:,2);
P3=P(:,:,3);

[M N]=size(P1)

T=M*N/256 %512X512尺寸，256像素的图像；在H0的条件下计算

z1=imhist(P1);
sum(power((z1(:)-T),2)/T)

z2=imhist(P2);
sum(power((z2(:)-T),2)/T)

z3=imhist(P3);
sum(power((z3(:)-T),2)/T)
