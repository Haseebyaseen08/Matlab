close all;
clear all;
clc

A=imread('C:\Users\Touch Screen\Desktop\ExperimentImage.jpg');
figure,imshow(A);
A=rgb2gray(A);
figure,imshow(A);
[Row,Col]=size(A);

MSB=zeros(Row,Col);

for i=1:1:Row
    for j=1:1:Col
        if(A(i,j)>=128)
            MSB(i,j)=128;
        end
    end
end

Plane7=zeros(Row,Col);
for i=1:1:Row
    for j=1:1:Col
        bitpattern = bitget(uint16(A(i,j)), 1:8);
        if(bitpattern(7)~=0)
            Plane7(i,j)=64;
        end
    end
end

Plane6=zeros(Row,Col);
for i=1:1:Row
    for j=1:1:Col
        bitpattern = bitget(uint16(A(i,j)), 1:8);
        if(bitpattern(6)~=0)
            Plane6(i,j)=32;
        end
    end
end


figure
subplot(1,3,1)
imshow(MSB,[])
title('8th plane')
subplot(1,3,2)
imshow(Plane7,[])
title('7th plane')
subplot(1,3,3)
imshow(Plane6,[])
title('6th plane')

ImageFrom3Plane=zeros(Row,Col);

for i=1:1:Row
    for j=1:1:Col
        ImageFrom3Plane(i,j)=MSB(i,j)+Plane7(i,j)+Plane6(i,j);
    end
end

figure
subplot(1,2,1)
imshow(A,[])
title('Orignal Gray Scale')
subplot(1,2,2)
imshow(ImageFrom3Plane,[]);
title('Image using 8,7 & 6 Plane')