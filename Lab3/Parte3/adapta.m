function I = adapta(f,a,c,fa,fc,fb,int,tol,nivel)

h = (c-a)/2;	%misma representación que m=(a+b)/2, pero este se suma a los puntos dados		
d = a+h; 
e = c+h;		% Puntos medios
fd = f(d);
fe = f(e);
int1 = simpson(h,fa,fc,fd);	% Simpson aplicado a la izquierda
int2 = simpson(h,fc,fb,fe);	% Simpson aplicado a la derecha

if abs(int-int1-int2)<tol
    I = int1+int2;
elseif nivel == 0
    error('Nivel excedido')
else  
	I = adapta(f,a,d,fa,fd,fc,int1,tol/2,nivel-1) + adapta(f,c,e,fc,fe,fb,int2,tol/2,nivel-1);
end
