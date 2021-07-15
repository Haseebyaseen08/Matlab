close all;
clear all;
clc

A=imread('C:\Users\Touch Screen\Desktop\LowContrast.jpg');
figure,imshow(A);
%A=rgb2gray(A);
[Row,Col]=size(A);
B=zeros(Row,Col);
C=zeros(Row,Col);
E=zeros(Row,Col);
F=zeros(Row,Col);
maximum=max(A(:));
minimum=min(A(:));

%Histogram Stretching
prompt='Give value of L for manual streching:';
L=input(prompt);

%Manual
for i=1:1:Row
    for j=1:1:Col
        B(i,j)=((double(A(i,j)-minimum))*(L-1))/(maximum-minimum);
    end
end
figure
subplot(1,2,1)
imshow(A)
subplot(1,2,2)
imshow(B,[])

%Log Transformation
for i=1:1:Row
    for j=1:1:Col
        F(i,j)=A(i,j)/10;  %Make image darker
    end
end
for i=1:1:Row
    for j=1:1:Col
        C(i,j)=log(1+(F(i,j)));
    end
end
figure
subplot(1,2,1)
imshow(F,[])
subplot(1,2,2)
imshow(C,[])


%Power Law Transformation

message1='Give Value of C for power law transformation:';
c=input(message1);
message2='Give Value of gama for power law transformation:';
gama=input(message2);
for i=1:1:Row
    for j=1:1:Col
        E(i,j)=c*(double(A(i,j))^(gama));
    end
end
figure
subplot(1,2,1)
imshow(A,[])
subplot(1,2,2)
imshow(E,[])