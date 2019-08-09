function [raiz,error,iteracion] = biseccionM(f,a,b,tol)
    contador = 0;
    iteracion = 0;
    raiz = [];
    error = [];
    if(sign(f(a))==sign(f(b)))
        disp('f(a)=f(b)');
        return;
    else
        while(abs(b-a)>tol)
            contador = contador+1;
            iteracion = iteracion +1;
            mitad = (b+a)/2;
            raiz = [raiz;mitad];
            error = [error;abs(b-a)];
            if(subs(f,mitad)==0)
                    error = 0;
               return;
            else
                if(sign(f(a))==sign(f(mitad)))
                    a = mitad;
                else
                    b = mitad;                        
                end              
            end
        end
        return;
    end
end


