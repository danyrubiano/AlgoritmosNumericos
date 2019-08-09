function [t,x] = runge(f,t0,tf,x0,n)
    h=(tf-t0)/n;
    t=t0:h:tf;
    x=zeros(n+1,1); %reserva memoria para n elementos del vector x
    x(1)=x0;
    for i=1:n
        k1=h*f(t(i),x(i));
        k2=h*f(t(i)+h/2,x(i)+k1/2);
        k3=h*f(t(i)+h/2,x(i)+k2/2);
        k4=h*f(t(i)+h,x(i)+k3);
        x(i+1)=x(i)+(k1+2*k2+2*k3+k4)/6;
     end
end