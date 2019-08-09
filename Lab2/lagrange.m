function [fi]=lagrange(x,y,x0)
m=length(x);
dxi=x0-x;
L=zeros(size(y));
L(1) = prod(dxi(2:m))/prod(x(1)-x(2:m));
L(m) = prod(dxi(1:m-1))/prod(x(m)-x(1:m-1));
for j=2:m-1
    num = prod(dxi(1:j-1))*prod(dxi(j+1:m));
    dem = prod(x(j)-x(1:j-1))*prod(x(j)-x(j+1:m));
    L(j)=num/dem; 
end; 
fi = sum(y.*L);
end