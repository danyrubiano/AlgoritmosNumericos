function [t, x] = multipasos(f, x0, t0, tf, N)

h = (tf - t0) / N;

t = t0 : h : tf;

x = x0;  

    [t2, x2] = runge(f, x0, t0, t0 + h / 4, 4);
    for I = 1 : 4
        x(I, :) = x2(I, :);
    end
    
for I = 5 : N + 1
    k1 = f(t(I - 1), x(I - 1, :));
    k2 = f(t(I - 2), x(I - 2, :));
    k3 = f(t(I - 3), x(I - 3, :));
    k4 = f(t(I - 4), x(I - 4, :));
    
    x(I , :) = x(I - 1, :) + h / 24 * (55 * k1 - 59 * k2 + 37 * k3 - 9 * k4);
end

%function [ts,ys] = multipasos(f,x0,t0,tf,h)
%ts=t0:h:tf;
%ys(:,1)=x0;
%n=(tf-t0)/n;
% Calculo de los valores iniciales

%[tpred,ypred]=rkc4(f,x0,t0,tf,h);
%ys(:,2)=ypred(:,2);
% Calculo de los restantes valores
%for i=1:n
%ys(:,i+1)=ys(:,i)+h*f(tpred(i+1),ypred(:,i+1))+f(ts(i),ys(:,i))/2;
%end;