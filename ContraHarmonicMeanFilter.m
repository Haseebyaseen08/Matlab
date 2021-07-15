close all;
clear all;
clc


A=imread('C:\Users\Touch Screen\Desktop\Horse.jpg');
%A=rgb2gray(A);
figure,imshow(A);

B=imnoise(A,'gaussian');
figure,imshow(B);

[Row,Col]=size(B);

C=B;

Q=0;
holder1=0;
holder2=0;
for i=2:1:Row-1
    for j=2:1:Col-1
        temp=B(i-1:i+1,j-1:j+1);  %Get neighbors
        a=temp.^(Q+1);
        b=temp.^(Q);
        holder1=sum(a(:));
        holder2=sum(b(:));
        pixelVal=holder1/holder2;
        holder1=0;
        holder2=0;
        C(i,j)=pixelVal;
    end
end

figure, imshow(C);