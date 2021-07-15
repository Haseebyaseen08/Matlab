close all;
clear all;
clc

A=imread('C:\Users\Touch Screen\Desktop\starsImage.jpg');
figure,imshow(A);
A=rgb2gray(A);
figure,imshow(A);
[Row,Col]=size(A);

hist=zeros(256,1);

for i=1:1:Row
    for j=1:1:Col
        hist(A(i,j)+1)=hist(A(i,j)+1)+1;
    end
end

figure, plot(hist);