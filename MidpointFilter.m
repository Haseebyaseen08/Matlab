close all;
clear all;
clc

%3x3 Midpoint Filter

A=imread('C:\Users\Touch Screen\Desktop\Horse.jpg');
%A=rgb2gray(A);
figure,imshow(A);

B=imnoise(A,'salt & pepper');
figure,imshow(B);

[Row,Col]=size(B);

C=B;
for i=2:1:Row-1
    for j=2:1:Col-1
        temp=B(i-1:i+1,j-1:j+1);  %Get neighbors
        maximum=max(temp(:));
        minimum=min(temp(:));
        pixelVal=(minimum+maximum)/2;
        C(i,j)=pixelVal;
    end
end

figure, imshow(C);