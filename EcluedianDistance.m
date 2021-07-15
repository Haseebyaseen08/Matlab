A=zeros(100,100);
Cx=50;
Cy=50;
Radius=40;
for i=1:1:100
    for j=1:1:100
        if(sqrt(((Cx-i)^2)+((Cy-j)^2))<=Radius)
            A(i,j)=255;
        end
    end
end
imshow(A);