function processedImage=MapingFunction(a,b,c,d,e,f,Row,Col,image)
C=zeros(Row,Col);
a0=a;
a1=b;
a2=c;
b0=d;
b1=e;
b2=f;
mapingFunction=[a0 a1 a2;b0 b1 b2;0 0 1];
for i=1:1:Row
    for j=1:1:Col
        val=mapingFunction*[i;j;1];
        C(val(1),val(2))=image(i,j);
    end
end
processedImage=C;
end