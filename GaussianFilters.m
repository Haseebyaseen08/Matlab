close all;
clear all;
clc

%3x3 Gaussian Filter

A=imread('C:\Users\Touch Screen\Desktop\NoiseImage.jpg');
figure,imshow(A);

B=rgb2gray(A);
figure,imshow(B);

[Row,Col]=size(B);

C=B;

Filter=[2 2 2;2 4 2;2 2 2];
sum_of_Filter=sum(Filter(:));
Filter=uint8(Filter);

for i=2:1:Row-1
    for j=2:1:Col-1
        temp=B(i-1:i+1,j-1:j+1);  %Get neighbors
        filterApply=temp.*Filter;  %Multiply all neighbors with Filter
        val=sum(filterApply(:));
        pixelVal=floor(val/sum_of_Filter); %Divide by sum to get  gaussian avg,scallng cofficient.
        C(i,j)=pixelVal;
    end
end

figure,imshow(C);

%Another Gaussian Filter
D=B;

Filter1=[1 2 1;2 4 2;1 2 1];
sum_of_Filter1=sum(Filter1(:));
Filter1=uint8(Filter1);

for i=2:1:Row-1
    for j=2:1:Col-1
        temp=B(i-1:i+1,j-1:j+1);  %Get neighbors
        filterApply=temp.*Filter1;  %Multiply all neighbors with filter
        val=sum(filterApply(:));
        pixelVal=floor(val/sum_of_Filter1); %Divide by sum to get  gaussian avg,scallng cofficient.
        D(i,j)=pixelVal;
    end
end

figure,imshow(D);