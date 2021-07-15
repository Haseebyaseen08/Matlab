A=zeros(100,100);
Cx=50;
Cy=50;
Radius=40;
for i=1:1:100
    for j=1:1:100
        val1=Cx-i;
        if(val1<=0)
            val1=val1*(-1)
        end
        val2=Cy-j;
        if(val2<=0)
            val2=val2*(-1)
        end
        val3=0;
        if val1>val2
            val3=val1;
        else
            val3=val2;
        end
        if(val3<=Radius)
            A(i,j)=255;
        end
    end
end
imshow(A);