clc;
clear;
%cd F:Dissertation代码图片%读取更改原图一个像素点后的加密图
image1=imread('加密Airplane.bmp');%读取没有更改原图的加密图
image2=imread('加密Airplane1.bmp');

%image1=rgb2gray(image1);
% image2=rgb2gray(image2);
%subplot(1,2,1),imshow(image2),title('原图像')subplot(1,2,2),imshow(image1),title('改变后图像')
%计算相同位置灰度值相等的个数
[M,N]=size(image1);
m=0;
for i=1:M 
    for j=1:N 
        if image1(i,j)==image2(i,j) 
            m=m+1; 
        end
    end
end%计算
NPC=(M*N-m)/(M*N);
disp(NPC);

