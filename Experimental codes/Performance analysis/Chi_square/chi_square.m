clc;
clear;
%P=imread('lena256.bmp');
%P=imread('pepper256.bmp');
%P=imread('airplane256.bmp');
%P=imread('image1_512.bmp');
%P=imread('image2_512.bmp');
%P=imread('image3_512.bmp');

%P=imread('black0_256.bmp');
%P=imread('black0_256.bmpS��2���滻�������ͼ��.bmp');

%P=imread('white0_256.bmp');
%P=imread('white0_256.bmpS��2���滻�������ͼ��.bmp');

%P=imread('image1.bmpS��2���滻�������ͼ��.bmp');
%P=imread('image2.bmpS��2���滻�������ͼ��.bmp');
%P=imread('image3.bmpS��2���滻�������ͼ��.bmp');

%P=imread('airplane256.bmpS��2���滻�������ͼ��.bmp');
P=imread('����Lena512.bmp');
%P=imread('pepper256.bmpS��2���滻�������ͼ��.bmp');

%P=imread('xor���ܺ��ͼ��_airplane256.bmp');
%
%P=imread('cirshift�ٴμ��ܺ��ͼ��_lena512.bmp');
%P=imread('xor���ܺ��ͼ��_lena256.bmp');

%P=imread('xor���ܺ��ͼ��_pepper256.bmp');

%P=imread('cirshift�ٴμ��ܺ��ͼ��_image1.bmp');

%P=imread('xor���ܺ��ͼ��_lena512.bmp');
%P=imread('image2���ܺ��ͼ��.bmp');
%P=imread('image3���ܺ��ͼ��.bmp');

P1=P(:,:,1);
P2=P(:,:,2);
P3=P(:,:,3);

[M N]=size(P1)

T=M*N/256 %512X512�ߴ磬256���ص�ͼ����H0�������¼���

z1=imhist(P1);
sum(power((z1(:)-T),2)/T)

z2=imhist(P2);
sum(power((z2(:)-T),2)/T)

z3=imhist(P3);
sum(power((z3(:)-T),2)/T)
