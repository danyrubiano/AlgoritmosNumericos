function [ A ] = spline_cubico( t,y,puntos )
[S]=spline_cubico_S(t,y);%obtengo las funciones spline
A=[];
n=size(t,2);

for p=puntos
    %obtencion del intervalo
    i=1;
    if(p>t(1))
        for i=1:n-1
            if(p<=t(i))
                i=i-1;
                break
            end
        end
    end
    A=[A,S{i}(p)];
end
%return A
end

