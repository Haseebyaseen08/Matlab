close all;
clear all;
clc

A=imread('C:\Users\Touch Screen\Desktop\glaxy.jpg');
figure,imshow(A);

[Row,Col,d]=size(A);
B=zeros(Row,Col,d);

for i=1:1:Row
    for j=1:1:Col
        B(i,j,1)=A(i,j,1)/2;
        B(i,j,2)=A(i,j,2)/2;
        B(i,j,3)=A(i,j,3)/2;
    end
end



figure, imshow(uint8(B)), title('Dark in RGB');

C=zeros(Row,Col,d);
K=rgb2hsv(A);
figure, subplot(1,2,1),imshow(K), title('Bright using HSI');
for i=1:1:Row
    for j=1:1:Col
        C(i,j,1)=K(i,j,1);
        C(i,j,2)=K(i,j,2);
        C(i,j,3)=K(i,j,3)/2;
    end
end
%C=hsv2rgb(C);
subplot(1,2,2), imshow(C), title('Dark using HSI');


D=zeros(Row,Col,d);

for i=1:1:Row
    for j=1:1:Col
        D(i,j,1)=(255-A(i,j,1))*2;
        D(i,j,2)=(255-A(i,j,2))*2;
        D(i,j,3)=(255-A(i,j,3))*2;
    end
end

for i=1:1:Row
    for j=1:1:Col
        D(i,j,1)=(255-D(i,j,1));
        D(i,j,2)=(255-D(i,j,2));
        D(i,j,3)=(255-D(i,j,3));
    end
end

figure, imshow(uint8(D)), title('Dark in CMY');

