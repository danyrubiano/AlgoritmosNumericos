tolerancia = 10e-8;
X = [1;1];
f = @(X) [3*X(1)^2-X(2)^2; 3*X(1)*X(2)^2-X(1)^3-1];
g = @(X) [X(2)/3^(1/2); ((1+X(1)^3)/(3*X(1)))^(1/2)];
jacobiano = @(X) [6*X(1) -2*X(2); 3*X(2)^2-3*X(1)^2 6*X(1)*X(2)];


[PF_convergencia, PF_error, PF_raices] = PuntoFijoSE(f, g, X, tolerancia);
[NR_convergencia, NR_error, NR_raices] = NewtonRaphsonSE(f, jacobiano, X, tolerancia);

GraficoSE(PF_error, NR_error, 'Error vs Iteraciones: S.E.1', 'Error');
GraficoErrorLn(PF_error, NR_error, 'Error ln vs Iteraciones: S.E.1');
GraficoSE(PF_convergencia(:,1), NR_convergencia(:,1), 'Aproximacion X1 vs Iteraciones: S.E.1', 'Aproximacion X1');
GraficoSE(PF_convergencia(:,2), NR_convergencia(:,2), 'Aproximacion X2 vs Iteraciones: S.E.1', 'Aproximacion X2');