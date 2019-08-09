function [convergencia, error, raices] = PuntoFijoSE(f, g, X, tolerancia)
    error = [];
    convergencia = [];
    while norm(f(X)) > tolerancia
        X = g(X);
        convergencia = [convergencia,X];
        error = [error; norm(f(X))];
    end
    convergencia = transpose(convergencia);    
raices = X;