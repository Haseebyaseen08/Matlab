close all;
clear all;
clc

%White Dot noise removal Min filter.

A=imread('C:\Users\Touch Screen\Desktop\whiteDotNoise.jpg');
figure,imshow(A);

%B=rgb2gray(A);
%figure,imshow(B);
B=A; %As image is already gray level.
[Row,Col]=size(B);

C=B;

for i=2:1:Row-1
    for j=2:1:Col-1
        temp=B(i-1:i+1,j-1:j+1);  %Get neighbors
        val=min(temp(:)); %Get mainimum value 
        C(i,j)=val;
    end
end

figure, imshow(C);