close all;
clear all;
clc

%3x3 Harmonic Filter

A=imread('C:\Users\Touch Screen\Desktop\Horse.jpg');
%A=rgb2gray(A);
figure,imshow(A);
%B=imnoise(A,'salt & pepper');
%A=A./4;
B=imnoise(A,'gaussian');
figure,imshow(B);
%B=A;

[Row,Col]=size(B);

C=B;

for i=2:1:Row-1
    for j=2:1:Col-1
        temp=B(i-1:i+1,j-1:j+1);  %Get neighbors
        if(any(temp(:)==0))
            C(i,j)=0;
        else
            val=double(1./double(temp(:)));   
            pixelVal=9/(sum(val(:))); %mn/(1/Sum of g(x,y)) 
            C(i,j)=pixelVal;
        end
    end
end

figure, imshow(C,[]);