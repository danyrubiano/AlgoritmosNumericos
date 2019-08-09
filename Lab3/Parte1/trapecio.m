clc; clear;
 fprintf('\t\tMETODO DEL TRAPECIO COMPUESTO\n')
 funcion=input('Ingrese la funcion \n f(x)=','s');
 a=input('Ingrese el limite inferior de la integral: ');
 b=input('Ingrese el limite superior de la integral: ');
 n=input('Ingrese el numero de intervalos\n');
 h=(b-a)/n;
 f=0;
 for k=1:n-1
 x=a+h*k;
 f=f+eval(funcion);
 end
 f=2*f;
 x=a; 
 f=f+eval(funcion); 
 x=b; 
 f=f+eval(funcion);
 f=(h/2)*(f);
 fprintf('El valor aproximado es: %10.15f\n\n',f)