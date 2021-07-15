close all;
clear all;
clc


A=imread('C:\Users\Touch Screen\Desktop\Horse.jpg');
%A=rgb2gray(A);
figure,imshow(A);

B=imnoise(A,'salt & pepper',0.6);
figure,imshow(B);

[Row,Col]=size(B);

C=zeros(Row,Col);
for i=2:1:Row-1
    for j=2:1:Col-1
        temp=B(i-1:i+1,j-1:j+1);  %Get neighbors
        temp=unique(temp);     %Repeating values just appear once
        val=median(temp(:)); %Get median value 
        C(i,j)=val;
    end
end

figure, imshow(C,[]);