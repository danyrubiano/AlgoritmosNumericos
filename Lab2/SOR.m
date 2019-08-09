function [X,RMSE,XS,k,contador] = SOR(A, B, w, tol, sizeA)
RMSE=[];
XS=[];
X = zeros(sizeA,1);
X0 = zeros(sizeA,1);
k = 1;
n=size(A,1);
error=1;
XS = [XS,X];
contador = 0;
while(error>tol)
    for i=1:n
        temp1 = 0;
        temp2 = 0;
        for j=1:i-1
            temp1 = temp1 - (A(i,j)*X0(j));
            contador = contador + 2;
        end
        for j=i+1:n
            temp2 = temp2 - (A(i,j)*X0(j));
            contador = contador + 2;
        end
        X(i) = (1-w)*X0(i)+(w/A(i,i))*(temp1 + temp2 + B(i));
        contador = contador + 6;
    end
    error = sqrt(mean((X - X0).^2));
    RMSE = [RMSE;error];
    XS = [XS,X];
    k=k+1;
    for i=1:n
        X0(i) = X(i);
    end
end
end