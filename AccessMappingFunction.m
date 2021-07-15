close all;
clear all;
clc

A=imread('C:\Users\Touch Screen\Desktop\ExperimentImage.jpg');
figure,imshow(A);

B=rgb2gray(A);
figure,imshow(B);

[Row,Col]=size(B);


%Maping Function
%mapingFunction=[a0 a1 a2;b0 b1 b2;0 0 1];
%rotationMapingFunction=[cos -sin;sin cos]

%For Translation
C=MapingFunction(1,0,50,0,1,50,Row,Col,B);
figure,imshow(C,[]);

D=BackwardMapingFunction(1,0,50,0,1,50,Row,Col,B);
figure,imshow(D,[]);

%For Scalling
E=MapingFunction(2,0,0,0,2,0,Row,Col,B);
figure,imshow(E,[]);

F=BackwardMapingFunction(1,0,50,0,1,50,Row,Col,B);
figure,imshow(F,[]);

%For Skew
G=MapingFunction(0,2,0,2,0,0,Row,Col,B);
figure,imshow(G,[]);

H=BackwardMapingFunction(1,0,50,0,1,50,Row,Col,B);
figure,imshow(H,[]);


