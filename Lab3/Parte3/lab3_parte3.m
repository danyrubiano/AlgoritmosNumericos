%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Se incluyen a modo de comparación los métodos de Newton Cotes, Simpson
% %3_8 y trapecio. Los valores que arrojan estas funciones, están contenidas
% % en las variables I1, I2 y I3 podrían estar
% %malas, debido a que esta funcion incluye una zona negativa, lo mcual
% %puede inducir a error

% %Además, se incluye un error comparativo con los resultados que arroja la
% %misma integral evaluada en Wolfram Alpha
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Prueba 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%a = 1;
%b = 3;
%tol = 10^-4;
%aux = log2(b-a) - log2(tol);
%nivel = round(aux) + 1;

%f = @(x) (100/x.^2)*sin(10/x);

%I = adaptativo(f,a,b,tol,nivel);
%I1 = simpson3_8(f,a,b);
%I2 = trapecio(f,a,b,nivel);
%I3 = newton_cotes(f,a,b);

%Valor aproximado con Wolfram Alpha: -1.4260
%real = -1.4260;
%errorAdaptativo = abs(I-real)/I;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Prueba 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%a = 1;
%b = 5;
%tol = 10^-5;
%aux = log2(b-a) - log2(tol);
%nivel = round(aux) + 1;

%f = @(x) 4*x*cos(2*x)-(x-2).^2;

%I = adaptativo(f,a,b,tol,nivel);
%I1 = simpson3_8(f,a,b);
%I2 = trapecio(f,a,b,nivel);
%I3 = newton_cotes(f,a,b);

%Valor aproximado con Wolfram Alpha: -17.015
%real = -17.015;
%errorAdaptativo = abs(I-real)/I;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Prueba 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%a = 0.1;
%b = 2;
%tol = 10^-3;
%aux = log2(b-a) - log2(tol);
%nivel = round(aux) + 1;

%f = @(x) cos(1/x);

%I = adaptativo(f,a,b,tol,nivel);
%I1 = simpson3_8(f,a,b);
%I2 = trapecio(f,a,b,nivel);
%I3 = newton_cotes(f,a,b);

%Valor aproximado con Wolfram Alpha: 0.673832
%real = 0.673832;
%errorAdaptativo = abs(I-real)/I;