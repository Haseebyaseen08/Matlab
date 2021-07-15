clear all;
clc

A=imread('C:\Users\Touch Screen\Desktop\ExperimentImage.jpg');
figure,imshow(A);
A=rgb2gray(A);

B=imadjust(A);
C=imadjust(A,[],[60/255,154/255]);
figure
subplot(2,3,1)
imshow(A,[])
subplot(2,3,4)
imhist(uint8(A))
subplot(2,3,2)
imshow(B,[])
subplot(2,3,5)
imhist(uint8(B))
subplot(2,3,3)
imshow(C,[])
subplot(2,3,6)
imhist(uint8(C))