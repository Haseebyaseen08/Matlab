close all;
clear all;
clc

%Color Image creation
MyColorImage=zeros(400,400,3);
figure, imshow(MyColorImage), title('Blank Color Image');

%Make image red
MyColorImage(:,:,1)=1;
figure, imshow(MyColorImage), title('Red Color Image');

%Make image Green
MyColorImage(:,:,1)=0;
MyColorImage(:,:,2)=1;
figure, imshow(MyColorImage), title('Green Color Image');

%Make image Blue
MyColorImage(:,:,2)=0;
MyColorImage(:,:,3)=1;
figure, imshow(MyColorImage), title('Blue Color Image');

%Todo Task
MyColorImage(:,:,:)=0;
MyColorImage(1:200,1:200,:)=0.5;
MyColorImage(1:200,201:400,1)=1;
MyColorImage(201:400,1:200,2)=1;
MyColorImage(201:400,201:400,1:2)=1;
figure, imshow(MyColorImage), title('Todo Image');

%Todo task 2
MyColorImage(:,:,:)=0;
MyColorImage(:,:,1)=0.5;

for i=1:1:1
    val=0.0025;
    for j=1:1:400
        MyColorImage(:,j,2)=val;
        val=val+0.0025;
    end
end

for i=1:1:1
    val=1;
    for j=1:1:400
        MyColorImage(j,:,3)=val;
        val=val-0.0025;
    end
end

figure, imshow(MyColorImage), title('Todo Image, with multiple shades on planes');
