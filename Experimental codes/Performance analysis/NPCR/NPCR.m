clc;
clear;
%cd F:Dissertation����ͼƬ%��ȡ����ԭͼһ�����ص��ļ���ͼ
image1=imread('����Airplane.bmp');%��ȡû�и���ԭͼ�ļ���ͼ
image2=imread('����Airplane1.bmp');

%image1=rgb2gray(image1);
% image2=rgb2gray(image2);
%subplot(1,2,1),imshow(image2),title('ԭͼ��')subplot(1,2,2),imshow(image1),title('�ı��ͼ��')
%������ͬλ�ûҶ�ֵ��ȵĸ���
[M,N]=size(image1);
m=0;
for i=1:M 
    for j=1:N 
        if image1(i,j)==image2(i,j) 
            m=m+1; 
        end
    end
end%����
NPC=(M*N-m)/(M*N);
disp(NPC);

