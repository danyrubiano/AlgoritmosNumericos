function f = simpson3_8(funcion,a,b)
 h=(b-a)/3;
 x=a;
 f=funcion(x);
 x=a+h; 
 f=f+3*funcion(x);
 x=a+2*h; 
 f=f+3*funcion(x); 
 x=b;
 f=f+funcion(x);
 f=(3*h/8)*f;