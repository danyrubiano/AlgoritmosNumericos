clear; clc;
tolerancia = 10^-10
f = @(x) (x)^3-log(1+2*(x));
ff = @(x) 3*(x)^2-(2/(1+2*(x)));
g = @(x) (log(1+2*(x)))^(1/3);
x1 = 0.5;
x2 = 1.5;

[B_raiz,B_error,B_iteraciones] = biseccionM(f,x1,x2,tolerancia);
%plot(B_raiz,'r--*')
%hold on
[PF_raiz,PF_error,PF_iteracion] = puntoFijo(g,x1,tolerancia);
%plot(PF_raiz, 'g--*')
%hold on
[S_raiz,S_error,S_iteracion] = MSecante(f, ff,x1,x2,tolerancia);
%plot(S_raiz, 'c--*')
%hold on
[RF_raiz,RF_error,RF_iteracion] = RegulaFalsi2(f,x1,x2,tolerancia);
%plot(RF_raiz, 'b--*')
%hold on
[NR_raiz,NR_error,NR_iteracion] = NewtonRaphson(f,ff,x2,tolerancia);
%plot(NR_raiz, 'm--*')
%hold on

grafico(B_error, PF_error, S_error, RF_error, NR_error, 'f3: Error vs Iteraciones', 'Error');
grafico(B_raiz, PF_raiz, S_raiz, RF_raiz, NR_raiz, 'f3: Aproximacion vs Iteraciones', 'Aproximacion');
graficoln(B_error, PF_error, S_error, RF_error, NR_error, 'f3: Error Ln vs Iteraciones');
