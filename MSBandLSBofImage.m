close all;
clear all;
clc

A=imread('C:\Users\Touch Screen\Desktop\ExperimentImage.jpg');
figure,imshow(A);
A=rgb2gray(A);
figure,imshow(A);
[Row,Col]=size(A);

BinaryMSB=zeros(Row,Col);
DecimalMSB=zeros(Row,Col);

for i=1:1:Row
    for j=1:1:Col
        if(A(i,j)>=128)
            BinaryMSB(i,j)=1;
            DecimalMSB(i,j)=128;
        end
    end
end

figure
subplot(1,2,1)
imshow(BinaryMSB,[])
title('Binary 8th plane')
subplot(1,2,2)
imshow(DecimalMSB,[])
title('Decimal 8th plane')

LSB=zeros(Row,Col);
for i=1:1:Row
    for j=1:1:Col
        if(rem(A(i,j),2)~=0)
            LSB(i,j)=1;
        end
    end
end

figure, imshow(LSB,[]), title('1st plane of image');