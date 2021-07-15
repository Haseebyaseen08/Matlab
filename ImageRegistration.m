close all;
clear all;
clc
%Run following code on console.
A=imread('C:\Users\Touch Screen\Desktop\T.png');
figure,imshow(A);
A=im2uint8(A);


B=imrotate(A,45);

cpselect(B,A);
 
t = cp2tform(movingPoints,fixedPoints,'similarity');

image=imtransform(B,t);
                          