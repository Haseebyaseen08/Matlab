close all;
clear all;
clc

%3x3 Midpoint Filter

A=imread('C:\Users\Touch Screen\Desktop\Horse.jpg');
%A=rgb2gray(A);
figure,imshow(A);

B=imnoise(A,'salt & pepper');
B=imnoise(B,'gaussian');
figure,imshow(B);

[Row,Col]=size(B);

C=zeros(Row,Col);

alpha=2;
trim=alpha/2;

for i=2:1:Row-1
    for j=2:1:Col-1
        temp=B(i-1:i+1,j-1:j+1);  %Get neighbors
        a=sort(temp(:));
        [r,c]=size(a);
        val=a(trim+1:r-trim);
        value=sum(val(:));
        [r1,c1]=size(val);
        pixelVal=value/(r1*c1); 
        C(i,j)=pixelVal;
    end
end

figure, imshow(C,[]);
