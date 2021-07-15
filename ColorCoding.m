close all;
clear all;
clc

A=imread('C:\Users\Touch Screen\Desktop\Artery.jpg');
figure,imshow(A);

B=rgb2gray(A);
figure,imshow(B);

[Row,Col]=size(B);

C=zeros(Row,Col,3);

for i=1:1:Row
    for j=1:1:Col
        if(B(i,j)<=30)
            C(i,j,1:3)=0;
        elseif(B(i,j)>30 && B(i,j)<=64)
            C(i,j,3)=1;
        elseif(B(i,j)>64 && B(i,j)<=128)
            C(i,j,2)=1;
        elseif(B(i,j)>128 && B(i,j)<=192)
            C(i,j,1:2)=1;
        else
            C(i,j,1)=1;
        end
    end
end

figure, imshow(C);
