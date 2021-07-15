close all;
clear all;
clc

A=imread('C:\Users\Touch Screen\Desktop\ExperimentImage.jpg');
A=rgb2gray(A);
figure,imshow(A);


B=imnoise(A,'gaussian');
figure
subplot(2,2,1)
imshow(A,[])
title('Orignal')
subplot(2,2,2)
imshow(B,[])
title('Gaussian Noise')
subplot(2,2,3)
imhist(uint8(A))
subplot(2,2,4)
imhist(uint8(B));

C=imnoise(A,'poisson');
figure
subplot(2,2,1)
imshow(A,[])
title('Orignal')
subplot(2,2,2)
imshow(C,[])
title('Poisson Noise')
subplot(2,2,3)
imhist(uint8(A))
subplot(2,2,4)
imhist(uint8(C));

D=imnoise(A,'salt & pepper');
figure
subplot(2,2,1)
imshow(A,[])
title('Orignal')
subplot(2,2,2)
imshow(D,[])
title('Salt & Pepper Noise')
subplot(2,2,3)
imhist(uint8(A))
subplot(2,2,4)
imhist(uint8(D));

E=imnoise(A,'speckle');
figure
subplot(2,2,1)
imshow(A,[])
title('Orignal')
subplot(2,2,2)
imshow(E,[])
title('Speckle Noise')
subplot(2,2,3)
imhist(uint8(A))
subplot(2,2,4)
imhist(uint8(E));
