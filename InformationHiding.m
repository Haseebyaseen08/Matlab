close all;
clear all;
clc

%Image we transmit
transmit=imread('C:\Users\Touch Screen\Desktop\ExperimentImage.jpg');
figure,imshow(transmit);
transmit=rgb2gray(transmit);
figure,imshow(transmit);
[Row,Col]=size(transmit);

%information we want to hide
info=imread('C:\Users\Touch Screen\Desktop\info.jpg');
info=rgb2gray(info);

%Remove LSB plane of transmit image
for i=1:1:Row
    for j=1:1:Col
        if(rem(transmit(i,j),2)~=0)
            transmit(i,j)=transmit(i,j)-1;
        end
    end
end

figure, imshow(transmit,[]), title('After Removing LSB');

%Extract MSB of message Image
MSB=zeros(Row,Col);
for i=1:1:Row
    for j=1:1:Col
        if(info(i,j)>=128)
            MSB(i,j)=1;
        end
    end
end

%Message Embed in transmit image
%This image we transmit
ReadyToTransmit=zeros(Row,Col);
for i=1:1:Row
    for j=1:1:Col
        ReadyToTransmit(i,j)=transmit(i,j)+MSB(i,j);
    end
end

figure, imshow(ReadyToTransmit,[]), title('After Message Embeded');

%Extract Message
LSB=zeros(Row,Col);
for i=1:1:Row
    for j=1:1:Col
        if(rem(ReadyToTransmit(i,j),2)~=0)
            LSB(i,j)=1;
        end
    end
end

Message=LSB*128;

figure,imshow(Message,[]),title('Here is the message');