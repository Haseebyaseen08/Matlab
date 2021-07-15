close all;
clear all;
clc

%3x3 UserDefine Filter

A=imread('C:\Users\Touch Screen\Desktop\NoiseImage.jpg');
figure,imshow(A);

B=rgb2gray(A);
figure,imshow(B);

[Row,Col]=size(B);

C=B;
filter=[0 0 0;0 0.5 0;0 1 0.5];
filter=uint8(filter);
for i=2:1:Row-1
    for j=2:1:Col-1
        temp=B(i-1:i+1,j-1:j+1);  %Get neighbors
        filterApply=temp.*filter;  %Multiply corrosponding values
        val=sum(filterApply(:));   %Add all values
        C(i,j)=val;
    end
end

figure, imshow(C);