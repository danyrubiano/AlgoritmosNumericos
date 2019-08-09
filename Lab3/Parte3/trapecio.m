function f = trapecio(funcion, a, b, n)
 h=(b-a)/n;
 f=0;
 for k=1:n-1
 x=a+h*k;
 f=f+funcion(x);
 end
 f=2*f;
 x=a; 
 f=f+funcion(x); 
 x=b; 
 f=f+funcion(x);
 f=(h/2)*(f);