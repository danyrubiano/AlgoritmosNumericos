function[X, contador] = lu_(a,b)
XI=[];
contador = 0;
[n,m]=size(a);
if n~=m error('Matriz no cuadrada.');
end
for j=1:n-1
    if a(j,j)==0 error('Pivote nulo.'); end
    for i=(j+1):n
        factor=a(i,j)/a(j,j);
        a(i,j)=factor;
        contador = contador + 1;
        for k=j+1:n
            a(i,k)=a(i,k)-factor*a(j,k);
            contador = contador + 2;
        end
    end
end
L=tril(a,-1)+eye(n);
U=triu(a);
Y=(L\b);
X=U\Y;
XI=X;