clear all
clc;
%һ��ͼ���Ԥ���������ɫͼ����ҶȻ�
%PS=imread('miw.bmp');%����JPG��ɫͼ���ļ�
PS=imread('����black.bmp');
%PS=imread('airplane512.bmp');
%PS=imread('image1_512.bmp');
%PS=imread('airplane512���ܺ��ͼ��.bmp');

%PS=imread('airplane512���ܺ��ͼ��.bmp');

% imshow(PS)                                 %��ʾ����
%title('����Ĳ�ɫJPGͼ��')
% title('��������ɫBMPͼ��')
% imwrite(rgb2gray(PS),'PicSampleGray.bmp'); %����ɫͼƬ�ҶȻ�������
% PS=rgb2gray(PS);                           %�ҶȻ�������ݴ�������

%��������ֱ��ͼ
[m,n,c]=size(PS);
t=600;%����ͼ��ߴ����
GP_R=zeros(1,256);                            %Ԥ������ŻҶȳ��ָ��ʵ�����
 GP_G=zeros(1,256);
 GP_B=zeros(1,256);
for k=0:255
    GP_R(k+1)=length(find(PS(:,:,1)==k));     %����ÿ���Ҷȳ��ֵĸ��ʣ��������GP����Ӧλ��
end
x=0:255;
 %figure;

bar(x,GP_R,0.5,'r');%����ֱ��ͼ,0.1�����߿�ȣ�Ĭ��0.8.Ϊʲô��ɫ���ܸı䣿
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
     GP_G(k+1)=length(find(PS(:,:,2)==k));     %����ÿ���Ҷȳ��ֵĸ��ʣ��������GP����Ӧλ��
 end
 x=0:255;
 % figure,
 bar(x,GP_G,0.5,'g');%����ֱ��ͼ,0.1�����߿�ȣ�Ĭ��0.8.Ϊʲô��ɫ���ܸı䣿
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
     GP_B(k+1)=length(find(PS(:,:,3)==k));     %����ÿ���Ҷȳ��ֵĸ��ʣ��������GP����Ӧλ��
 end
 x=0:255;
 % figure,
 bar(x,GP_B,0.5,'b');%����ֱ��ͼ,0.1�����߿�ȣ�Ĭ��0.8.Ϊʲô��ɫ���ܸı䣿
% %title('Blue component','fontsize',16,'FontAngle','italic');
xlim([0 255]);
ylim([0 t]);
% %ylim([0 1200]);
%  xlabel('Gray scale of blue component','fontsize',16,'FontAngle','italic');
%  ylabel('Distribution','fontsize',16,'FontAngle','italic');
xlabel('Gray scale of blue component','fontsize',16,'Fontname','Times New Roman','FontAngle','normal');
ylabel('Distribution','fontsize',16,'Fontname','Times New Roman','FontAngle','normal');
  set(gca,'FontSize',18,'Fontname','Times New Roman');