%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Metodo de los Trapecios

%x0 = input('abscisa inicial, x0: ');
%xf = input('abscisa final, xf: ');
%n = input('número intervalos, n: ');

%deriv = @(x) -x^2+14*x+21;  %definición del integrando 
%res = trapecio(deriv, x0, xf, n); %calcula la integral
%fprintf('El valor aproximado de la integral: %3.2f\n', res)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Metodo de simpson (1/3)

x0 = input('abscisa inicial, x0: ');
xf = input('abscisa final, xf: ');
n = input('número intervalos (par), n: ');
if rem(n,2) == 1
  disp('El número intervalos tiene que ser par ');
  break
end

deriv = @ (x) -x^2+14*x+21;  %definición del integrando 
res = simpson1_3(deriv, x0, xf, n); %calcula la integral
fprintf('El valor aproximado de la integral: %3.2f\n', res)
