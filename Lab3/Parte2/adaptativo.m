function [t, x] = adaptativo(f, x0, t0, tf, n)


%Hallamos el paso:
h = (tf - t0) / n;


% Vector COLUMNA de nodos
t = [t0 : h : tf]';


% Vector COLUMNA de soluciones
x = x0;     %Lo inicializamos dándole los valores iniciales del PVI


%INICIALIZAMOS LOS 4 PRIMEROS VALORES POR RUNGE-KUTTA DE ORDEN 4
    [t2, x2] = runge(f, x0, t0, t0 + h / 4, 4);
    for I = 1 : 4
        x(I, :) = x2(I, :);
    end


% ADAMS-BASHFORHT [4 pasos]
% u[I] = u[I-1] + h * (55/24 f[I-1] - 59/24 f[I-2] + 39/24 f[I-3] - 9/24 f[I-4])
% ADAMS-MOULTON [3 pasos]
% u[I] = u[I-1] + h/24 * (9 f[I] + 19 f[I-1] - 5f[I-2] + f[I-3])

% Va hasta N + 1 pues no hay componente 0 en los vectores de MatLab.
% Inicializamos los k? que no se generan [sólo sobreescriben] en el bucle
k4 = f(t(1), x(1, :));
k3 = f(t(2), x(2, :));
k2 = f(t(3), x(3, :));

for I = 5 : n + 1
    k1 = f(t(I - 1), x(I - 1, :));
    
    upred = x(I - 1, :) + h / 24 * (55 * k1 - 59 * k2 + 39 * k3 - 9 * k4);
    x(I , :) = x(I - 1, :) + h / 24 * (9 * upred + 19 * k1 - 5 * k2 + k3);
    
    k4 = k3;
    k3 = k2;
    k2 = k1;
end
