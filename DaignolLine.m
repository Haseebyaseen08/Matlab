A=zeros(100,100);
Cx=50;
Cy=50;
Radius=40;
for i=1:1:100
    for j=1:1:100
        if(i==j)
            A(i,j)=255;
        end
    end
end
imshow(A);

%help to get info about any command
%help imread
%lookfor is to get info about command, it start searching and whatever it
%get, it show you about command
%lookfor save
%the above line show data about whatever saving possible in matlab and how.