close all;
clear all;
clc

A=imread('C:\Users\Touch Screen\Desktop\moonImage.jpeg');
A=rgb2gray(A);

[Row,Col]=size(A);
L=256;
myHist=zeros(L,1);

for i=1:1:Row
    for j=1:1:Col
        myHist(A(i,j)+1)=myHist(A(i,j)+1)+1;
    end
end

PDF=zeros(L,1);
for i=1:1:L
    PDF(i,1)=myHist(i,1)/(Row*Col);
end

CDF=zeros(L,1);
CDF(1,1)=PDF(1,1);
for i=2:1:L
    CDF(i,1)=CDF(i-1,1)+PDF(i,1);
end

LUT=zeros(L,1);
for i=1:1:L
    LUT(i,1)=CDF(i,1)*(L-1);
end

Output=zeros(Row,Col);
for i=1:1:Row
    for j=1:1:Col
        Output(i,j)=LUT(A(i,j)+1);
    end
end

B=histeq(A);  %Built In Function
C=adapthisteq(A); %Adaptive Equilization

figure
subplot(2,4,1)
imshow(A)
title('Orignal')
subplot(2,4,2)
imshow(Output,[])
title('Equilized')
subplot(2,4,3)
imshow(B,[])
title('Built In')
subplot(2,4,4)
imshow(C,[])
title('Built In')
subplot(2,4,5)
imhist(A)
subplot(2,4,6)
imhist(uint8(Output))
subplot(2,4,7)
imhist(uint8(B))
subplot(2,4,8)
imhist(uint8(C))
 




    