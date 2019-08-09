%%%%%%%%%%%%%%%%%%%%%%%%%%
% Dany Rubiano Jiménez   %
% Laboratorio 3, parte 1 %
%%%%%%%%%%%%%%%%%%%%%%%%%%

Se implementan los siguientes métodos de integración, cada uno de ellos con la misma estructura:

1. Metodo de los trapecios.
2. Metodo de Newton-Cotes
3. Método de Simpson (3/8)
4. Método de Simpsom (1/3)

La estructura de los programas es la siguiente:
 funcion=input('Ingrese la funcion \n f(x)=','s');
 a=input('Ingrese el limite inferior de la integral: ');
 b=input('Ingrese el limite superior de la integral: ');

Donde se le pide la función mediante u input y se debe ingresar la función como un string,
ej: 
   x*sin(x)
Luego se le pide a usted los limites de la integral definida,
ej: 
   0 a pi

Las funciones que se probaron son las siguientes:

1. x*sin(x)-x^3 desde 0 a 6, el cual tiene un resultado aproximado de -330.04
2. (cos(x))^3 + x^4 -5, desde 0 a 5,  el cual tiene un resultado aproximado de 599.33
3. x^3-(1/(x^5-6)) +3, desde -1 to 1, el cual tiene un resultado aproximado de 6.33419

Se escogieron estas funciones, las cuales fueron de alguna manera inventadas, tratando de encontrar cierta complejidad para 
la evaluación de los métodos desarrollados, y debido a que son continuas en los intervalos escogidos.

Para probar estas funciones, se debe correr cada método por separado ingresando los pararmetros mencionados anteriormente, y las funciones tal y como salen
Ej:
   METODO DE NEWTON COTES
   Ingrese la funcion 
    f(x)=x^3-(1/(x^5-6)) +3
   Ingrese el limite inferior de la integral: -1
   Ingrese el limite superior de la integral: 1
   El valor aproximado de la integral es: 6.347425330665844
