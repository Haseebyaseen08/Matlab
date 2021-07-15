close all;
clear all;
clc

A=imread('C:\Users\Touch Screen\Desktop\ExperimentImage.jpg');
figure,imshow(A);
A=rgb2gray(A);
figure,imshow(A);
[Row,Col]=size(A);
sumOfImage=sum(A(:));
Mean=sumOfImage/(Row*Col);

%Probability Method
values=unique(A);
[r,c]=size(values);
f=zeros(r,c);
p=zeros(r,c);
count=0;
counter=1;
for i=1:1:r
    for j=1:1:Row
        for k=1:1:Col
            if(values(counter,1)==A(j,k))
                count=count+1;
            end
        end
    end
    f(counter,1)=count;
    count=0;
    counter=counter+1;
end

for i=1:1:r
    p(i,1)=f(i,1)/(Row*Col);
end

mean=zeros(r,c);
for k=1:1:r
   mean(k,1)=(double(values(k,1))*p(k,1));
end
mean=sum(mean(:));
