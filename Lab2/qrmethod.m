function [X,contador] = qrmethod(A,b)
X=[];
[m, n] = size(A);
R = zeros(n, n);
V = A;
Q=zeros(m, n);
contador = 0;
for i =1:n
    R(i,i)= norm(V(:,i));
    Q(:,i)= V(:,i)/R(i,i);
    contador = contador + 1;
    for j=i+1:n
       R(i,j)= (Q(:,i)')*V(:,j);
       V(:,j)=V(:,j) - R(i,j)*Q(:,i);
       contador = contador + 3;
    end
end
X=inv(R)*Q'*b;