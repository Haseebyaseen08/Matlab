function processedImage=BackwardMapingFunction(a,b,c,d,e,f,Row,Col,image)
C=zeros(Row,Col);
a0=a;
a1=b;
a2=c;
b0=d;
b1=e;
b2=f;
mapingFunction=[a0 a1 a2;b0 b1 b2;0 0 1];
mapingFunction=inv(mapingFunction);
for i=1:1:Row
    for j=1:1:Col
        val=mapingFunction*[i;j;1];
        if (val(1)<0)
            val(1)=-1*(val(1));
        end
        if(val(1)==0)
            val(1)=1;
        end
        if (val(2)<0)
            val(2)=-1*(val(2));
        end
        if(val(2)==0)
            val(2)=1;
        end
        C(i,j)=image(val(1),val(2));
    end
end
processedImage=C;
end