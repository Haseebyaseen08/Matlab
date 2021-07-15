close all;
clear all;
clc

A=imread('C:\Users\Touch Screen\Desktop\LowContrast.jpg');

figure
subplot(1,2,1)
imshow(A,[])
subplot(1,2,2)
imhist(A)
ylim('auto')
title('Orignal Histogram');

%Move towards right
A1=imadd(A,50);
figure
subplot(1,2,1)
imshow(A1,[])
subplot(1,2,2)
imhist(A1)
ylim('auto')
title('Histogram Sliding to Right by 50');

%Move towards left
A2=imsubtract(A,50);
figure
subplot(1,2,1)
imshow(A2,[]);
subplot(1,2,2)
imhist(A2)
ylim('auto')
title('Histogram Sliding to Left by 50');

