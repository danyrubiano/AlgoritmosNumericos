function [ S] = spline_cubico_S( t,y )
%se inicializan los arreglos
S={};
n=length(t)
h = t(2:n) - t(1:n-1);
b = (y(2:n) - y(1:n-1))./h;
 
u = 2*(h(1:end-1) + h(2:end));

v=6*(b(2:end)-b(1:end-1));

T=zeros(n-2,n-2);
for i=1:n-2
    T(i,i)=u(i);
    if(i<n-2)
        T(i,i+1)=h(i+2);
        T(i+1,i)=h(i+1);
    end
end
z=(T\v')';
z=[0 z 0]

A = b - h.*(2*z(1:end-1) + z(2:end))/6;
B = z/2;
C =(z(2:end)-z(1:end-1))./(6*h);

for i=1:n-1
    S{i}=@(x) y(i) + A(i).*(x-t(i)) + B(i).*(x-t(i)).^2 + C(i).*(x-t(i)).^3;
end
end

