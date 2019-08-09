clc; clear;
 fprintf('METODO DE NEWTON COTES\n')
 funcion=input('Ingrese la funcion \n f(x)=','s');
 a=input('Ingrese el limite inferior de la integral: ');
 b=input('Ingrese el limite superior de la integral: ');
n=1;
h=(b-a)/3;
x=a;
f0=eval(funcion);
x=a+h;
f1=eval(funcion);
x=a+2*h;
f2=eval(funcion);
x=a+3*h;
f3=eval(funcion);
x=a+4*h;
f4=eval(funcion);

I1=(h/2)*(f0+f1);
error=(-1/12)*(h^5)*((f2-(2*f1)+f0)/(h^2));
I1=I1+error;

n=2;
I2=(h/3)*(f0+4*f1+f2);
error=(-1/90)*(h^5)*((f4-(4*f3)+(6*f2)-(4*f1)+f0)/(h^4));
I2=I2+error;

n=3;
I3=((3*h)/8)*(f0+(3*f1)+(3*f2)+f3);
error=(-3/80)*(h^5)*((f4-(4*f3)+(6*f2)-(4*f1)+f0)/(h^4));
I3=I3+error;

 fprintf('El valor aproximado de la integral es: %10.15f\n\n',I3)
