clear all;
clc

A=imread('C:\Users\Touch Screen\Desktop\ExperimentImage.jpg');
figure,imshow(A);
A=rgb2gray(A);
[Row,Col]=size(A);
B=zeros(Row,Col);
C=zeros(Row,Col);
E=zeros(Row,Col);
F=zeros(Row,Col);
maximum=max(A(:));
minimum=min(A(:));

%Histogram Shrinking
prompt='Give starting value for shrinking:';
S_min=input(prompt);
prompt='Give ending value for shrinking:';
S_max=input(prompt);

%Manual
for i=1:1:Row
    for j=1:1:Col
        val=(double((S_max-S_min))/double((maximum-minimum)))*((A(i,j)-minimum));
        B(i,j)=val+S_min;
    end
end
figure
subplot(2,2,1)
imshow(A)
subplot(2,2,2)
imshow(B,[])
subplot(2,2,3)
imhist(uint8(A))
subplot(2,2,4)
imhist(uint8(B))