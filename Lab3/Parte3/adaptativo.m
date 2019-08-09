function I = adaptativo(f,a,b,tol,nivel)

h = (b-a)/2;	%misma representación que m=(a+b)/2, pero este se suma a los puntos dados		
c = a+h;		% Punto medio
fa = f(a);
fc = f(c);
fb = f(b);
int = simpson(h,fa,fb,fc);
tol = 10*tol;
I = adapta(f,a,c,fa,fc,fb,int,tol,nivel);
