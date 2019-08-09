clc; clear;
 fprintf('\t\tMETODO DE SIMPSON de 1/3\n')
 funcion=input('Ingrese la funcion \n f(x)=','s');
 a=input('Ingrese el limite inferior de la integral: ');
 b=input('Ingrese el limite superior de la integral: ');
 h=(b-a)/2;
 x=a; 
 f=eval(funcion); 
 x=b; 
 f=f+eval(funcion);
 x=a+h; 
 f=f+ 4*(eval(funcion));
 f=(h/3)*f;
 fprintf('El valor aproximado de la integral es: %10.15f\n\n',f)
