close all;
clear all;
clc

A=imread('C:\Users\Touch Screen\Desktop\ExperimentImage.jpg');
figure,imshow(A);

B=rgb2gray(A);
figure,imshow(B);

[Row,Col]=size(B);

C=zeros(Row,Col);

%Translation
for i=1:1:Row
    for j=1:1:Col
            C(i+50,j+50)=B(i,j);
    end
end

figure, imshow(C,[]);

F=zeros(Row,Col);

%If want to retain orignal size of image
for i=1:1:Row
    for j=1:1:Col
        if (i+50>Row || j+50>Col)
            continue;
        else
            F(i+50,j+50)=B(i,j);
        end
    end
end

figure, imshow(F,[]);

D=zeros(Row,Col);

%Scalling
for i=1:1:Row
    for j=1:1:Col
            D(i*2,j*2)=B(i,j);
    end
end

figure, imshow(D,[]);

E=zeros(Row,Col);

%Skew/Shear
for i=1:1:Row
    for j=1:1:Col
            E(2*j,2*i)=B(i,j);
    end
end

figure, imshow(E,[]);