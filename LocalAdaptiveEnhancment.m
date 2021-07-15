close all;
clear all;
clc


A=imread('C:\Users\Touch Screen\Desktop\moonImage.jpeg');
figure,imshow(A);

B=rgb2gray(A);
figure,imshow(B);

[Row,Col]=size(B);
sumB=sum(double(B(:)));
Mean=sumB/(Row*Col);
Max=max(B(:));
Min=min(B(:));
Var=Max-Min;
SD=sqrt(double(Var));
C=B;

for i=8:1:Row-7
    for j=8:1:Col-7
        temp=B(i-7:i+7,j-7:j+7);  %Get neighbors
        [LRow,LCol]=size(temp);
        LsumB=sum(temp(:));
        LMean=LsumB/(LRow*LCol);
        LMax=max(temp(:));
        LMin=min(temp(:));
        LVar=LMax-LMin;
        LSD=sqrt(double(LVar));
        
        if LMean<0.5*Mean
            if 0.1*SD<LSD && LSD<0.6*SD
                A=(0.5*(Mean))/LSD;
                val=B(i,j)-LMean;
                val1=A*val;
                val2=val1+LMean;
                C(i,j)=val2;
            else
                C(i,j)=B(i,j);
            end
        else
            C(i,j)=B(i,j);
        end
    end
end

figure, imshow(C,[]);

D=zeros(Row,Col);
for i=1:1:Row
    for j=1:1:Col
        D(i,j)=C(i,j)-B(i,j);
    end
end
figure, imshow(D,[])