clear; clc;
tolerancia = 10^-10;
f = @(x) cos(x)-tan(x);
ff = @(x) -sin(x)-(sec(x))^2;
fff = @(x) -cos(x)-2*tan(x)*(sec(x))^2;
g = @(x) atan(cos(x));
x1 = 0.5;
x2 = 1.5;

[B_raiz,B_error,B_iteraciones] = biseccionM(f,x1,x2,tolerancia);
[PF_raiz,PF_error,PF_iteracion] = puntoFijo(g,x1,tolerancia);
[S_raiz,S_error,S_iteracion] = MSecante(f,ff,x1,x2,tolerancia);
[RF_raiz,RF_error,RF_iteracion] = RegulaFalsi(f,x1,x2,tolerancia);
[NR_raiz,NR_error,NR_iteracion] = NewtonRaphson(f,ff,x1,tolerancia);

grafico(B_error, PF_error, S_error, RF_error, NR_error, 'f2: Error vs Iteraciones', 'Error');
grafico(B_raiz, PF_raiz, S_raiz, RF_raiz, NR_raiz, 'f2: Aproximacion vs Iteraciones', 'Aproximacion');
graficoln(B_error, PF_error, S_error, RF_error, NR_error, 'f2: Error Ln vs Iteraciones');
