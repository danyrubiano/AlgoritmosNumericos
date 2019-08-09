tolerancia = 10e-8;
X = [0;0;0];
f = @(X) [X(1)^2+X(2)-37; X(1)-X(2)^2-5; X(1)+X(2)+X(3)-3];
jacobiano = @(X) [2*X(1) 1 0; 1 -2*X(2) 0; 1 1 1];
g = @(X) [(37-X(2))^(1/2); abs((X(1)-5)^(1/2)); 3-X(2)-X(1)];

[PF_convergencia, PF_error, PF_raices] = PuntoFijoSE(f, g, X, tolerancia);
[NR_convergencia, NR_error, NR_raices] = NewtonRaphsonSE(f, jacobiano, X, tolerancia);

GraficoSE(PF_error, NR_error, 'Error vs Iteraciones: S.E.2', 'Error');
GraficoErrorLn(PF_error, NR_error, 'Error ln vs Iteraciones: S.E.2');
GraficoSE(PF_convergencia(:,1), NR_convergencia(:,1), 'Aproximacion X1 vs Iteraciones: S.E.2', 'Aproximacion X1');
GraficoSE(PF_convergencia(:,2), NR_convergencia(:,2), 'Aproximacion X2 vs Iteraciones: S.E.2', 'Aproximacion X2');
GraficoSE(PF_convergencia(:,3), NR_convergencia(:,3), 'Aproximacion X3 vs Iteraciones: S.E.2', 'Aproximacion X3');

