clc;
clear;
%cd F:Dissertation����ͼƬ
%��ȡ�ı���ԭͼ�ļ���ͼ
image1=imread('����Lena5122.bmp');
%��ȡδ�ı�ԭͼ�ļ���ͼ
image2=imread('����Lena512.bmp');
% I1=image1(:,:,1);I2=image1(:,:,2);I3=image1(:,:,3);
% image1=[I1,I2,I3];
% I4=image2(:,:,1);I5=image2(:,:,2);I6=image2(:,:,3);
% image2=[I1,I2,I3];
%��ʾͼƬ
% image1=rgb2gray(image1);
% image2=rgb2gray(image2);

% subplot(1,2,1),imshow(image2),title('ԭͼ��')
% subplot(1,2,2),imshow(image1),title('�ı��ͼ��')
%��uint8ת��Ϊ˫��������
image1=double(image1);
image2=double(image2);
[M,N]=size(image1);
%������ͼ�Ҷ�ֵ����������ֵ
B=abs(image1-image2)./255;
m=sum(sum(B));
UAC=m/(M.*N);
UAC=sum(UAC);
disp(UAC);

