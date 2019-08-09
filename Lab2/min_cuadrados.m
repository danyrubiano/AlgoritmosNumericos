function [ YY ] = min_cuadrados( X,Y,k,xx )

A=zeros(k+1,k+1);

for i=1:k+1
    for j=1:k+1
        A(i,j)=sum(X.^(i+j-2));
    end
end
A(1,1)=size(X,2);
b=[];
for i=0:k
    b=[b,sum((X.^i).*Y)];
end
C=b /A;

YY=polyval(fliplr(C),xx);
end

