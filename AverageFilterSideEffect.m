close all;
clear all;
clc

%15x15 Averaging Filter

A=imread('C:\Users\Touch Screen\Desktop\WhiteDotProblem.jpg');
figure,imshow(A);

B=rgb2gray(A);
figure,imshow(B);

[Row,Col]=size(B);

C=B;

for i=8:1:Row-7
    for j=8:1:Col-7
        temp=B(i-7:i+7,j-7:j+7);  %Get neighbors
        val=sum(temp(:));   %Add all neighbors
        pixelVal=floor(val/255); %Divide by 225 to get avg value as 15x15 mask,scallng cofficient.
        C(i,j)=pixelVal;
    end
end

figure, imshow(C);

