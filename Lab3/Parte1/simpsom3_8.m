clc; clear;
 fprintf('METODO DE SIMPSON DE 3/8\n')
 funcion=input('Ingrese la funcion \n f(x)=','s');
 a=input('Ingrese el limite inferior de la integral: ');
 b=input('Ingrese el limite superior de la integral: ');
 h=(b-a)/3;
 x=a;
 f=eval(funcion);
 x=a+h; 
 f=f+3*(eval(funcion));
 x=a+2*h; 
 f=f+3*(eval(funcion)); 
 x=b;
 f=f+eval(funcion);
 f=(3*h/8)*f;
 fprintf('El valor aproximado de la integral es: %10.15f\n\n',f)
