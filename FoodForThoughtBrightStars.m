close all;
clear all;
clc

%Interestingly changing filter size the results change so we have to become
%choosy according to what we requide.

A=imread('C:\Users\Touch Screen\Desktop\starsImage.jpg');
figure,imshow(A);

B=rgb2gray(A);
figure,imshow(B);

[Row,Col]=size(B);

C=B;
for i=2:1:Row-1    %3x3 Average filter
    for j=2:1:Col-1
        temp=B(i-1:i+1,j-1:j+1);  %Get neighbors
        val=sum(temp(:));   %Add all neighbors
        pixelVal=floor(val/9); 
        C(i,j)=pixelVal;
    end
end

figure, imshow(C);

D=zeros(Row,Col);
for i=1:1:Row
    for j=1:1:Col
        if C(i,j)>=128
            D(i,j)=1;
        end
    end
end

figure, imshow(D);
D=uint8(D);

E=B.*D;
figure,imshow(E);
