close all;
clear all;
clc

%3x3 Geometric Filter

A=imread('C:\Users\Touch Screen\Desktop\Horse.jpg');
%A=rgb2gray(A);
figure,imshow(A);

B=imnoise(A,'gaussian');
figure,imshow(B);

[Row,Col]=size(B);

C=B;

for i=2:1:Row-1
    for j=2:1:Col-1
        temp=B(i-1:i+1,j-1:j+1);  %Get neighbors
        val=prod(temp(:));   %Multiply all neighbors
        pixelVal=val^(1/9); 
        C(i,j)=pixelVal;
    end
end

figure, imshow(C);