format long
% Al utilizar true n puede ser: 289, 1089 o 4225
n=4225
if (false)% true para los  sistemas de ecuaciones, false para los metodos de interpolacion
    
    switch(n)
        case 289
            % se cargan los datos 289
            A289 = load('sistemas/289x289/A289.dat');
            b289 = load('sistemas/289x289/b289.dat');
            X289_real = linsolve(A289,b289);
            %iterativas
            [X289_jacobi, aproxJ289]  = gauss_jacobi(A289,b289,false);
            error_jacobi = norm(A289*X289_jacobi-b289);
            EitJ289=[];
            for i=1:size(aproxJ289,2)
                EitJ289=[EitJ289,norm((A289*aproxJ289(:,i))-b289)];
            end
            [X289_seidel, aproxS289]  = gauss_seidel(A289,b289,false);
            error_seidel = norm(A289*X289_seidel-b289);
            EitS289=[];
            for i=1:size(aproxS289,2)
                EitS289=[EitS289,norm((A289*aproxS289(:,i))-b289)];
            end
            %SOR
            max_iteraciones = 100;
            tolerancia = 10^-10;
            w_inicial = 1;
            t_SOR = cputime;
            [valores_sor,errores_sor,n_iteraciones_sor] = Metodo_SOR(A289, b289, max_iteraciones, w_inicial, tolerancia);
            e_SOR = cputime - t_SOR;
            
            %por descomposicion
            X289_LU      = ResolverConLU(A289,b289);
            error_LU = norm(A289*X289_LU-b289);
            X289_QR      = qr_solve(A289,b289);
            error_QR = norm(A289*X289_QR-b289);
            break;
        case 1089
            % se cargan los datos 1089
            A1089 = load('sistemas/1089x1089/A1089.dat');
            b1089 = load('sistemas/1089x1089/b1089.dat');
            X1089_real = linsolve(A1089,b1089);
            %iterativas
            %%[X1089_jacobi, aproxJ1089]  = gauss_jacobi(A1089,b1089,false);
            %%error_jacobi = norm(A1089*X1089_jacobi-b1089);
            %%EitJ1089=[];
            %5for i=1:size(aproxJ1089,2)
            %%    EitJ1089=[EitJ1089,norm((A1089*aproxJ1089(:,i))-b1089)];
            %%end
            [X1089_seidel, aproxS1089]  = gauss_seidel(A1089,b1089,false);
            error_seidel = norm(A1089*X1089_seidel-b1089);
            EitS1089=[];
            for i=1:size(aproxS1089,2)
                EitS1089=[EitS1089,norm((A1089*aproxS1089(:,i))-b1089)];
            end
            %SOR
            max_iteraciones = 500;
            tolerancia = 10^-10;
            w_inicial = 1;
            t_SOR = cputime;
            [X1089_SOR,errores_sor,n_iteraciones_sor] = Metodo_SOR(A1089, b1089, max_iteraciones, w_inicial, tolerancia);
            e_SOR = cputime - t_SOR;
            %por descomposicion
            X1089_LU      = ResolverConLU(A1089,b1089);
            error_LU = norm(A1089*X1089_LU-b1089);
            X1089_QR      = qr_solve(A1089,b1089);
            error_QR = norm(A1089*X1089_QR-b1089);
            break;
        case 4225
            % se cargan los datos 4225
            A4225 = load('sistemas/4225x4225/A4225.dat');
            b4225 = load('sistemas/4225x4225/b4225.dat');
            %X4225_real = linsolve(A4225,b4225);
            %iterativas
            %[X4225_jacobi, aproxJ4225]  = gauss_jacobi(A4225,b4225,false);
            %error_jacobi = norm(A4225*X4225_jacobi-b4225);
            %EitJ4225=[];
            %for i=1:size(aproxJ4225,2)
            %    EitJ4225=[EitJ4225,norm((A4225*aproxJ4225(:,i))-b4225)];
            %end
            %%[X4225_seidel, aproxS4225]  = gauss_seidel(A4225,b4225,false);
            %%error_seidel = norm(A4225*X4225_seidel-b4225);
            %%EitS4225=[];
            %%for i=1:size(aproxS4225,2)
            %%    EitS4225=[EitS4225,norm((A4225*aproxS4225(:,i))-b4225)];
            %%end
            %SOR
            max_iteraciones = 50;
            tolerancia = 10^-10;
            w_inicial = 1;
            t_SOR = cputime;
            [X4225_SOR,errores_sor,n_iteraciones_sor] = Metodo_SOR(A4225, b4225, max_iteraciones, w_inicial, tolerancia);
            e_SOR = cputime - t_SOR;
            cputime_SOR = mean(vector_cputime_SOR)
            %por descomposicion
            %LU
            %%X4225_LU      = ResolverConLU(A4225,b4225);
            %%error_LU = norm(A4225*X4225_LU-b4225);
            %QR
            %%X4225_QR      = qr_solve(A4225,load(b4225));
            %%error_QR = norm(A4225*X4225_QR-b4225);
            break;
    end
else
    ec=1
    if(ec==1)
        func=@(x) cos(x) - x.^2;
    else
        func=@(x) x.^3+2*x.^2-5;
    end
    x0_5= -10:.5:10;
    x1_0= -10:1:10;
    x2_0= -10:2:10;
    x5_0= -10:5:10;
    xx  = -10:.05:10;
    y0_5= func(x0_5);
    y1_0= func(x1_0);
    y2_0= func(x2_0);
    y5_0= func(x5_0);
    Yt=func(xx);
    n=size(xx,2);
 %%%para intervalos de 0_5
    %lagrange
    Ly0_5=[];
    for i=xx
        Ly0_5=[Ly0_5,lagrange(x0_5,y0_5,i)];
    end
    errL0_5=Yt-Ly0_5;
    rmseL0_5=sum(errL0_5.^2)/n;
    %minimos cuadrados
    MC0_5=min_cuadrados(x0_5,y0_5,10,xx);
    errM0_5=Yt-MC0_5;
    rmseM0_5=sum(errM0_5.^2)/n;
    %splines cubicos
    SC0_5=spline_cubico(x0_5,y0_5,xx);
    errS0_5=Yt-SC0_5;
    rmseS0_5=sum(errS0_5.^2)/n;
    
 %%%para intervalos de 1_0
    %lagrange
    
    Ly1_0=[];
    for i=xx
        Ly1_0=[Ly1_0,lagrange(x1_0,y1_0,i)];
    end
    errL1_0=Yt-Ly1_0;
    rmseL1_0=sum(errL1_0.^2)/n;
    %minimos cuadrados
    MC1_0=min_cuadrados(x1_0,y1_0,10,xx);
    errM1_0=Yt-MC1_0;
    rmseM1_0=sum(errM1_0.^2)/n;
    %splines cubicos
    SC1_0=spline_cubico(x1_0,y1_0,xx);
    errS1_0=Yt-SC1_0;
    rmseS1_0=sum(errS1_0.^2)/n;
 %%%para intervalos de 2_0
    %lagrange
    
    Ly2_0=[];
    for i=xx
        Ly2_0=[Ly2_0,lagrange(x2_0,y2_0,i)];
    end
    errL2_0=Yt-Ly2_0;
    rmseL2_0=sum(errL2_0.^2)/n;
    %minimos cuadrados
    MC2_0=min_cuadrados(x2_0,y2_0,5,xx);
    errM2_0=Yt-MC2_0;
    rmseM2_0=sum(errM2_0.^2)/n;
    %splines cubicos
    SC2_0=spline_cubico(x2_0,y2_0,xx);
    errS2_0=Yt-SC2_0;
    rmseS2_0=sum(errS2_0.^2)/n;
    
 %%%para intervalos de 5
    %lagrange
    Ly5_0=[];
    for i=xx
        Ly5_0=[Ly5_0,lagrange(x5_0,y5_0,i)];
    end
    errL5_0=Yt-Ly5_0;
    rmseL5_0=sum(errL5_0.^2)/n;
    %minimos cuadrados
    MC5_0=min_cuadrados(x5_0,y5_0,5,xx);
    errM5_0=Yt-MC5_0;
    rmseM5_0=sum(errM5_0.^2)/n;  
    %splines cubicos
    SC5_0=spline_cubico(x5_0,y5_0,xx);
    errS5_0=Yt-SC5_0;
    rmseS5_0=sum(errS5_0.^2)/n;
    
   
    hold on;
    %plot(xx,Yt,'color','y');%Reales
    plot(xx,Ly1_0,'color','g');%Lagrange 
    plot(xx,MC1_0,'color','r');%Minimos Cuadrados
    plot(xx,SC1_0,'color','b');%Spline Cubico
    %plot(x1_0,y1_0,'color','black');%Puntos
    hold off;
end