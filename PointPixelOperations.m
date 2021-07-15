close all;
clear all;
clc

A=imread('C:\Users\Touch Screen\Desktop\ExperimentImage.jpg');
figure,imshow(A);
B=rgb2gray(A);
figure,imshow(B);

[Row,Col]=size(B);

%Operation: S=r+30

C=B;
for i=1:1:Row
    for j=1:1:Col
        val=C(i,j)+30;
        if val>255
            val=255;
        end
        if val<0
            val=0;
        end
        C(i,j)=val;
    end
end
figure,imshow(C);

%Operation: S=r-30

D=B;
for i=1:1:Row
    for j=1:1:Col
        val=D(i,j)-30;
        if val>255
            val=255;
        end
        if val<0
            val=0;
        end
        D(i,j)=val;
    end
end
figure,imshow(D);

%Operation: S=r/2

E=B;
for i=1:1:Row
    for j=1:1:Col
        val=E(i,j)/2;
        if val>255
            val=255;
        end
        if val<0
            val=0;
        end
        E(i,j)=val;
    end
end
figure,imshow(E);

%Operation: S=255-r Image negative

F=B;
for i=1:1:Row
    for j=1:1:Col
        val=255-F(i,j);
        if val>255
            val=0;   %Because Image inverse
        end
        if val<0
            val=255;  %Because Image inverse
        end
        F(i,j)=val;
    end
end
figure,imshow(F);

%Operation: S=r*2

G=B;
for i=1:1:Row
    for j=1:1:Col
        val=G(i,j)*2;
        if val>255
            val=255;
        end
        if val<0
            val=0;
        end
        G(i,j)=val;
    end
end
figure,imshow(G);