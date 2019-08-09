function [convergencia, error, raices] = NewtonRaphsonSE(f, jacobiano, X, tolerancia)
    error = [];
    convergencia = [];
    while norm(f(X)) > tolerancia
        X = X - jacobiano(X)\f(X);
        convergencia = [convergencia,X];
        error = [error; norm(f(X))];
    end
    convergencia = transpose(convergencia);    
raices = X;

