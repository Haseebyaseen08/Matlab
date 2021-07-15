close all;
clear all;
clc

%Salt and paper noise removal Median filter.

A=imread('C:\Users\Touch Screen\Desktop\NoiseTesting.jpg');
figure,imshow(A);

B=rgb2gray(A);
figure,imshow(B);

[Row,Col]=size(B);

C=B;

for i=2:1:Row-1
    for j=2:1:Col-1
        temp=B(i-1:i+1,j-1:j+1);  %Get neighbors
        val=median(temp(:)); %Get median value 
        C(i,j)=val;
    end
end

figure, imshow(C);


