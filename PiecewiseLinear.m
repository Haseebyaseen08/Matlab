close all;
clear all;
clc

A=imread('C:\Users\Touch Screen\Desktop\Artery.jpg');
figure,imshow(A);
A=rgb2gray(A);
%imshow(A),impixelinfo();
[Row,Col]=size(A);
B=zeros(Row,Col);

for i=1:1:Row
    for j=1:1:Col
        if (A(i,j)<140)
            B(i,j)=40;
        else
            B(i,j)=200;
        end
    end
end

figure
subplot(1,2,1)
imshow(A,[])
subplot(1,2,2)
imshow(B,[])