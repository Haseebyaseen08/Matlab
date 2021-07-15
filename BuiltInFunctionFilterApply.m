close all;
clear all;
clc


A=imread('C:\Users\Touch Screen\Desktop\NoiseImage.jpg');
figure,imshow(A);

B=rgb2gray(A);
figure,imshow(B);

myFilter=[1 1 1;1 1 1;1 1 1]; %this type of filter replace value with sum of neighbors

newImage=imfilter(double(B),myFilter);

figure, imshow(newImage,[]);

myFilter2=1/13*[0 0 1 0 0;0 1 1 1 0;1 1 1 1 1;0 1 1 1 0;0 0 1 0 0]; %this filter slightly blur 5x5

newImage2=imfilter(double(B),myFilter2);

figure, imshow(newImage2,[]);

myFilter3=1/5*eye(5); %This command create a 5x5 matrics and on the daignol value is 1 while other are 0
%The above filter is also averaging filter.

newImage3=imfilter(double(B),myFilter3);

figure, imshow(newImage3,[]);

%Filters made in multiple steps

myFilter4=zeros(5,5);
myFilter4(1:2,3)=-1;
myFilter4(3,3)=2;

%Now above 3 steps genrate filter
%0 0 -1 0 0
%0 0 -1 0 0
%0 0  2 0 0
%0 0  0 0 0
%0 0  0 0 0

%This is sharpening filter

newImage4=imfilter(double(B),myFilter4);
SharpImage=double(B)+newImage4;
figure, imshow(newImage4,[]);
figure, imshow(SharpImage,[]);

%Another Sharpeneing Filter
myFilter5=zeros(5,5);
myFilter5(1:2,3)=-1;
myFilter5(3,3)=4;
myFilter5(4:5,3)=-1;

%Now above 4 steps genrate filter
%0 0 -1 0 0
%0 0 -1 0 0
%0 0  4 0 0
%0 0 -1 0 0
%0 0 -1 0 0

%This is also sharpening filter

newImage5=imfilter(double(B),myFilter5);
SharpImage2=double(B)+newImage5;
figure, imshow(newImage5,[]);
figure, imshow(SharpImage2,[]);

%Another Sharpening Filter AKA Laplacian Filter 

myFilter6=[-1 -1 -1;-1 8 -1;-1 -1 -1]; 
newImage6=imfilter(double(B),myFilter6);
SharpImage3=double(B)+newImage6;
figure, imshow(newImage6,[]);
figure, imshow(SharpImage3,[]);

%Single filter for sharpened Image
%Now this filter is not sharpening filter rather combination of 2 filters.
%Composite Filter

myFilter7=[-1 -1 -1;-1 9 -1;-1 -1 -1]; 
newImage7=imfilter(double(B),myFilter7);

figure, imshow(newImage7,[]);

%Another Sharpening Filter
%Emboss Effect

myFilter8=[-1 -1 0;-1 0 1;0 1 1]; 
newImage8=imfilter(double(B),myFilter8);
SharpImage4=double(B)+newImage8;
figure, imshow(newImage8,[]);
figure, imshow(SharpImage4,[]);