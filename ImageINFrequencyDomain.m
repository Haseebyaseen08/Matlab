close all;
clear all;
clc

A=imread('C:\Users\Touch Screen\Desktop\ExperimentImage.jpg');
figure,imshow(A);
A=rgb2gray(A);
figure,imshow(A);
B=fft2(double(A)); %Expect double data type
figure,imshow(B,[]);
C=ifft2(B); %to regenrate from frequency domain
figure,imshow(C,[]);
D=fftshift(log(1+abs(B))); 
figure,imshow(D,[]);