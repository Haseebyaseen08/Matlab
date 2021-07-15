close all;
clear all;
clc

%3x3 Averaging Filter

A=imread('C:\Users\Touch Screen\Desktop\ExperimentImage.jpg');
figure,imshow(A);

B=rgb2gray(A);
figure,imshow(B);

[Row,Col]=size(B);

C=B;

for i=2:1:Row-1
    for j=2:1:Col-1
        temp=B(i-1:i+1,j-1:j+1);  %Get neighbors
        val=sum(temp(:));   %Add all neighbors
        pixelVal=floor(val/9); %Divide by 9 to get avg value as 3x3 mask,scallng cofficient.
        C(i,j)=pixelVal;
    end
end

figure, imshow(C);

%2nd Todo

image=[0 0 0 0 0 0 0 0 0 0;0 0 0 0 0 0 0 0 0 0;0 0 0 90 90 90 90 90 0 0;0 0 0 90 90 90 90 90 0 0;0 0 0 90 90 90 90 90 0 0;0 0 0 90 0 90 90 90 0 0;0 0 0 90 90 90 90 90 0 0;0 0 0 0 0 0 0 0 0 0;0 0 90 0 0 0 0 0 0 0;0 0 0 0 0 0 0 0 0 0];
[Row1,Col1]=size(image);
figure,imshow(image);
imageResult=zeros(Row1,Col1);
for i=2:1:Row1-1
    for j=2:1:Col1-1
        temp=image(i-1:i+1,j-1:j+1);  %Get neighbors
        val=sum(temp(:));   %Add all neighbors
        pixelVal=floor(val/9); %Divide by 9 to get avg value as 3x3 mask,scallng cofficient.
        imageResult(i,j)=pixelVal;
    end
end

figure,imshow(imageResult);