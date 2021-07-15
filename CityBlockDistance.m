A=zeros(100,100);

[Row,Col]=size(A);
Cx=50;
Cy=50;
Radius=40;
for i=1:1:Row
    for j=1:1:Col
        val1=Cx-i;
        if(val1<=0)
            val1=val1*(-1)
        end
        val2=Cy-j;
        if(val2<=0)
            val2=val2*(-1)
        end
        if((val1+val2)<=Radius)
            A(i,j)=255;
        end
    end
end
imshow(A);