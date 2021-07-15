clear all;
close all;
clc

%Transformation: Thresholding function

A=imread('C:\Users\Touch Screen\Desktop\ExperimentImage.jpg');
figure,imshow(A);

B=rgb2gray(A);
[Row,Col]=size(B);
figure,imshow(B);

C=zeros(Row,Col);
for i=1:1:Row
    for j=1:1:Col
        if B(i,j)>=128
            C(i,j)=1;
        end
    end
end

figure, imshow(C);