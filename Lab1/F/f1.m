clear; clc;
tolerancia = 10^-10;
f = @(x) (1-x)*log(x);
ff = @(x) (1/x)-log(x)-1;
g = @(x) x^x;
x1 = 0.5;
x2 = 1.5;

[PF_raiz,PF_error,PF_iteracion] = puntoFijo2(g,x1,tolerancia);
[S_raiz,S_error,S_iteracion] = MSecante(f,ff,x1,x2,tolerancia);
[NR_raiz,NR_error,NR_iteracion] = NewtonRaphson(f,ff,x1,tolerancia);

graficof1(PF_error, S_error, NR_error, 'f1: Error vs Iteraciones', 'Error');
graficof1(PF_raiz, S_raiz, NR_raiz, 'f1: Aproximacion vs Iteraciones', 'Aproximacion');
graficof1ln(PF_error, S_error, NR_error);