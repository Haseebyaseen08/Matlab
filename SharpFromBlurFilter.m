close all;
clear all;
clc


A=imread('C:\Users\Touch Screen\Desktop\NoiseImage.jpg');
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

D=B-C;   %Edges Extraction

figure, imshow(D);

E=B+D;    %Sharpened Image

figure, imshow(E);
