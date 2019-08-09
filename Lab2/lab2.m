format long
  %A = load('A4225.dat');
  %b = load('b4225.dat');
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Fatorización LU
  %X1 = []; 
  %[X1, contador_lu] = lu_(A,b);
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Factorización QR
%X2 = [];
 %[X2,contador_qr] = qrmethod(A,b);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Seidel
%X3 = [];
%XS3 = [];
%ErrorS = [];
%tolerancia = 10^-5;
%[X3,ErrorS,XS3, k1, contador1] = Seidel(A,b,tolerancia,4225);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %SOR
%X4 = [];
%XS4 = [];
%ErrorSOR = [];
%w=1.1;
%[X4,ErrorSOR,XS4,k2,contador2] = SOR(A, b, w, tolerancia,1089)
%error_matriz(ErrorS, ErrorS);
%errorln_matriz(ErrorS, ErrorS);

%X = linsolve(A,b)
  %  error = sqrt(mean((X - X1).^2));
  %  RMSE_LU = [RMSE_LU;error]
  
   % error = sqrt(mean((X - X2).^2));
   % RMSE_QR = [RMSE_QR;error];

  %  error = sqrt(mean((X - X3).^2));
   % RMSE_seidel = [RMSE_seidel;error];
  
   % error = sqrt(mean((X - X4).^2));
   % RMSE_sor = [RMSE_sor;error];

    
  %ERROR_RMSE_LU(RMSE_LU);
  %ERROR_RMSE_QR(RMSE_QR);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    func1=@(x) cos(x) - x.^2;
    func2=@(x) x.^3+2*x.^2-5;
    
    x0_5= -10:.5:10;
    x1= -10:1:10;
    x2= -10:2:10;
    x5= -10:5:10;
    x0_05  = -10:.05:10;
    
    y1_0_5= func1(x0_5);
    y1_1= func1(x1);
    y1_2= func1(x2);
    y1_5= func1(x5);
    
    y2_0_5= func2(x0_5);
    y2_1= func2(x1);
    y2_2= func2(x2);
    y2_5= func2(x5);
    
    Yt1=func1(x0_05);
    Yt2=func2(x0_05);
    n=size(x0_05,2);
    
     rmseL1_0_5 = [];
    rmseM1_0_5 = [];
    rmseS1_0_5 = []; 
    rmseL2_0_5 = [];
    rmseM2_0_5 = [];
    rmseS2_0_5 = []; 
    rmseL1_1 = [];
    rmseM1_1 = [];
    rmseS1_1 = []; 
    rmseL2_1 = [];
    rmseM2_1 = [];
    rmseS2_1 = []; 
    rmseL1_2 = [];
    rmseM1_2 = [];
    rmseS1_2 = []; 
    rmseL2_2 = [];
    rmseM2_2 = [];
    rmseS2_2 = []; 
    rmseL1_5 = [];
    rmseM1_5 = [];
    rmseS1_5 = []; 
    rmseL2_5 = [];
    rmseM2_5 = [];
    rmseS2_5 = [];
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%para intervalos de 0_5
   %% funcion 1
    %lagrange
    Ly1_0_5=[];
    for i=x0_05
        Ly1_0_5=[Ly1_0_5,lagrange(x0_5,y1_0_5,i)];
    end
    errL1_0_5 = sqrt(mean((Yt1-Ly1_0_5).^2));
    rmseL1_0_5 = [rmseL1_0_5; errL1_0_5]
    %minimos cuadrados
    MC1_0_5 = min_cuadrados(x0_5,y1_0_5,10,x0_05);
    errM1_0_5 = sqrt(mean((Yt1-MC1_0_5).^2));
    rmseM1_0_5 = [rmseM1_0_5; errM1_0_5];
    %splines cubicos
    SC1_0_5 = spline_cubico(x0_5,y1_0_5,x0_05);
    errS1_0_5 = sqrt(mean((Yt1 - SC1_0_5).^2));
    rmseS1_0_5 = [rmseS1_0_5; errS1_0_5];
    
    %lagrange
    %% funcion2
    Ly2_0_5 = [];
    for i = x0_05
        Ly2_0_5 = [Ly2_0_5, lagrange(x0_5, y2_0_5, i)];
    end
    errL2_0_5 = sqrt(mean((Yt2 - Ly2_0_5).^2));
    rmseL2_0_5 = [rmseL2_0_5; errL2_0_5];
    %minimos cuadrados
    MC2_0_5 = min_cuadrados(x0_5,y2_0_5,10,x0_05);
    errM2_0_5 = sqrt(mean((Yt2 - MC2_0_5).^2));
    rmseM2_0_5 = [rmseM2_0_5; errM2_0_5];
    %splines cubicos
    SC2_0_5 = spline_cubico(x0_5, y2_0_5, x0_05);
    errS2_0_5 = sqrt(mean((Yt2 - SC2_0_5).^2));
    rmseS2_0_5 = [rmseS2_0_5 ;errS2_0_5];
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
 %%%para intervalos de 1_0
    %% funcion 1
    %lagrange
    Ly1_1 = [];
    for i = x0_05
        Ly1_1 = [Ly1_1, lagrange(x1, y1_1, i)];
    end
    errL1_1 = sqrt(mean((Yt1 - Ly1_1).^2));
    rmseL1_1 = [rmseL1_1 ;errL1_1];
    %minimos cuadrados
    MC1_1 = min_cuadrados(x1, y1_1,10, x0_05);
    errM1_1 = sqrt(mean((Yt1 - MC1_1).^2));
    rmseM1_1 = [rmseM1_1 ;errM1_1];
    %splines cubicos
    SC1_1 = spline_cubico(x1, y1_1, x0_05);
    errS1_1 = sqrt(mean((Yt1 - SC1_1).^2));
    rmseS1_1 = [rmseS1_1 ;errS1_1];
    
    %% funcion 2
    %lagrange
    Ly2_1 = [];
    for i = x0_05
        Ly2_1 = [Ly2_1, lagrange(x1, y2_1, i)];
    end
    errL2_1 = sqrt(mean((Yt2 - Ly2_1).^2));
    rmseL2_1 = [rmseL2_1 ;errL2_1];
    %minimos cuadrados
    MC2_1 = min_cuadrados(x1, y2_1,10, x0_05);
    errM2_1 = sqrt(mean((Yt2 - MC2_1).^2));
    rmseM2_1 = [rmseM2_1 ;errM2_1];
    %splines cubicos
    SC2_1 = spline_cubico(x1, y2_1, x0_05);
    errS2_1 = sqrt(mean((Yt2 - SC2_1).^2));
    rmseS2_1 = [rmseS2_1 ;errS2_1];
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
 %%%para intervalos de 2_0
 
   %% funcion 1
    %lagrange
    
    Ly1_2=[];
    for i=x0_05
       Ly1_2 = [Ly1_2, lagrange(x2, y1_2, i)];
    end
    errL1_2= sqrt(mean((Yt1 - Ly1_2).^2));
    rmseL1_2 = [rmseL1_2 ;errL1_2];
    %minimos cuadrados
    MC1_2=min_cuadrados(x2, y1_2, 5, x0_05);
    errM1_2 = sqrt(mean((Yt1 - MC1_2).^2));
    rmseM1_2 = [rmseM1_2 ;errM1_2];
    %splines cubicos
    SC1_2 = spline_cubico(x2, y1_2, x0_05);
    errS1_2 = sqrt(mean((Yt1 - SC1_2).^2));
    rmseS1_2 = [rmseS1_2 ;errS1_2];

 %% funcion 2
    %lagrange
    
    Ly2_2=[];
    for i=x0_05
        Ly2_2 = [Ly2_2, lagrange(x2, y2_2, i)];
    end
    errL2_2 = sqrt(mean((Yt2 - Ly2_2).^2));
    rmseL2_2 = [rmseL2_2 ;errL2_2];
    %minimos cuadrados
    MC2_2 = min_cuadrados(x2, y2_2, 5, x0_05);
    errM2_2 = sqrt(mean((Yt2 - MC2_2).^2));
    rmseM2_2 = [rmseM2_2 ;errM2_2];
    %splines cubicos
    SC2_2 = spline_cubico(x2, y2_2, x0_05);
    errS2_2 = sqrt(mean((Yt2 - SC2_2).^2));
    rmseS2_2 = [rmseS2_2 ;errS2_2];
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%para intervalos de 5
     %% funcion 1
    %lagrange
    Ly1_5 = [];
    for i = x0_05
        Ly1_5=[Ly1_5,lagrange(x5,y1_5,i)];
    end
    errL1_5 = sqrt(mean((Yt1 - Ly1_5).^2));
    rmseL1_5 = [rmseL1_5 ;errL1_5];
    %minimos cuadrados
    MC1_5 = min_cuadrados(x5, y1_5, 5, x0_05);
    errM1_5 = sqrt(mean((Yt1 - MC1_5).^2));
    rmseM1_5 = [rmseM1_5 ;errM1_5];  
    %splines cubicos
    SC1_5 = spline_cubico(x5, y1_5, x0_05);
    errS1_5 = sqrt(mean((Yt1 - SC1_5).^2));
    rmseS1_5 = [rmseS1_5 ;errS1_5];
    
     %% funcion 2
    %lagrange
    Ly2_5 = [];
    for i = x0_05
        Ly2_5=[Ly2_5,lagrange(x5,y2_5,i)];
    end
    errL2_5 = sqrt(mean((Yt2 - Ly2_5).^2));
    rmseL2_5 = [rmseL2_5 ;errL2_5];
    %minimos cuadrados
    MC2_5 = min_cuadrados(x5, y2_5, 5, x0_05);
    errM2_5 = sqrt(mean((Yt2 - MC2_5).^2));
    rmseM2_5 = [rmseM2_5 ;errM2_5];  
    %splines cubicos
    SC2_5 = spline_cubico(x5, y2_5, x0_05);
    errS2_5 = sqrt(mean((Yt2 - SC2_5).^2));
    rmseS2_5 = [rmseS2_5 ;errS2_5];
   
    
   
    %hold on;
    %plot(x0_05,Ly1_0_5,'DisplayName','Lagrange','Color',[1 0 1]);%Lagrange 
    %plot(x0_05,MC1_0_5,'DisplayName','Minimos Cuadrados','LineStyle','-.','Color',[0 0 1]);%Minimos Cuadrados
    %plot(x0_05,SC1_0_5,'DisplayName','Spline Cubico','LineStyle','--','Color',[0 1 1]);%Spline Cubicos
    %xlabel({'x'},'Interpreter','latex');
    %ylabel({'f(x)'},'Interpreter','latex');
    %title({'Interpolacion para f1(x), con x = -10:0.5:10'},'Interpreter','latex');
    %legend('Lagrange','Minimos Cuadrados','Spline Cubico');
    %hold off;
    
    %hold on;
    %plot(x0_05,Ly2_0_5,'DisplayName','Lagrange','Color',[1 0 1]);%Lagrange 
    %plot(x0_05,MC2_0_5,'DisplayName','Minimos Cuadrados','LineStyle','-.','Color',[0 0 1]);%Minimos Cuadrados
    %plot(x0_05,SC2_0_5,'DisplayName','Spline Cubico','LineStyle','--','Color',[0 1 1]);%Spline Cubicos
    %xlabel({'x'},'Interpreter','latex');
    %ylabel({'f(x)'},'Interpreter','latex');
    %title({'Interpolacion para f2(x), con x = -10:0.5:10'},'Interpreter','latex');
    %legend('Lagrange','Minimos Cuadrados','Spline Cubico');
    %hold off;
    
    
    %hold on;
    %plot(x0_05,Ly1_1,'DisplayName','Lagrange','Color',[1 0 1]);%Lagrange 
    %plot(x0_05,MC1_1,'DisplayName','Minimos Cuadrados','LineStyle','-.','Color',[0 0 1]);%Minimos Cuadrados
    %plot(x0_05,SC1_1,'DisplayName','Spline Cubico','LineStyle','--','Color',[0 1 1]);%Spline Cubicos
    %xlabel({'x'},'Interpreter','latex');
    %ylabel({'f(x)'},'Interpreter','latex');
    %title({'Interpolacion para f1(x), con x = -10:1:10'},'Interpreter','latex');
    %legend('Lagrange','Minimos Cuadrados','Spline Cubico');
    %hold off;
    
    %hold on;
    %plot(x0_05,Ly2_1,'DisplayName','Lagrange','Color',[1 0 1]);%Lagrange 
    %plot(x0_05,MC2_1,'DisplayName','Minimos Cuadrados','LineStyle','-.','Color',[0 0 1]);%Minimos Cuadrados
    %plot(x0_05,SC2_1,'DisplayName','Spline Cubico','LineStyle','--','Color',[0 1 1]);%Spline Cubicos
    %xlabel({'x'},'Interpreter','latex');
    %ylabel({'f(x)'},'Interpreter','latex');
    %title({'Interpolacion para f2(x), con x = -10:1:10'},'Interpreter','latex');
    %legend('Lagrange','Minimos Cuadrados','Spline Cubico');
    %hold off;
    
    
    %hold on;
    %plot(x0_05,Ly1_2,'DisplayName','Lagrange','Color',[1 0 1]);%Lagrange 
    %plot(x0_05,MC1_2,'DisplayName','Minimos Cuadrados','LineStyle','-.','Color',[0 0 1]);%Minimos Cuadrados
    %plot(x0_05,SC1_2,'DisplayName','Spline Cubico','LineStyle','--','Color',[0 1 1]);%Spline Cubicos
    %xlabel({'x'},'Interpreter','latex');
    %ylabel({'f(x)'},'Interpreter','latex');
    %title({'Interpolacion para f1(x), con x = -10:2:10'},'Interpreter','latex');
    %legend('Lagrange','Minimos Cuadrados','Spline Cubico');
    %hold off;
    
    %hold on;
    %plot(x0_05,Ly2_2,'DisplayName','Lagrange','Color',[1 0 1]);%Lagrange 
    %plot(x0_05,MC2_2,'DisplayName','Minimos Cuadrados','LineStyle','-.','Color',[0 0 1]);%Minimos Cuadrados
    %plot(x0_05,SC2_2,'DisplayName','Spline Cubico','LineStyle','--','Color',[0 1 1]);%Spline Cubicos
    %xlabel({'x'},'Interpreter','latex');
    %ylabel({'f(x)'},'Interpreter','latex');
    %title({'Interpolacion para f2(x), con x = -10:2:10'},'Interpreter','latex');
    %legend('Lagrange','Minimos Cuadrados','Spline Cubico');
    %hold off;
    
    
    %hold on;
    %plot(x0_05,Ly1_5,'DisplayName','Lagrange','Color',[1 0 1]);%Lagrange 
    %plot(x0_05,MC1_5,'DisplayName','Minimos Cuadrados','LineStyle','-.','Color',[0 0 1]);%Minimos Cuadrados
    %plot(x0_05,SC1_5,'DisplayName','Spline Cubico','LineStyle','--','Color',[0 1 1]);%Spline Cubicos
    %xlabel({'x'},'Interpreter','latex');
    %ylabel({'f(x)'},'Interpreter','latex');
    %title({'Interpolacion para f1(x), con x = -10:5:10'},'Interpreter','latex');
    %legend('Lagrange','Minimos Cuadrados','Spline Cubico');
    %hold off;
    
    %hold on;
    %plot(x0_05,Ly2_5,'DisplayName','Lagrange','Color',[1 0 1]);%Lagrange 
    %plot(x0_05,MC2_5,'DisplayName','Minimos Cuadrados','LineStyle','-.','Color',[0 0 1]);%Minimos Cuadrados
    %plot(x0_05,SC2_5,'DisplayName','Spline Cubico','LineStyle','--','Color',[0 1 1]);%Spline Cubicos
    %xlabel({'x'},'Interpreter','latex');
    %ylabel({'f(x)'},'Interpreter','latex');
    %title({'Interpolacion para f2(x), con x = -10:5:10'},'Interpreter','latex');
    %legend('Lagrange','Minimos Cuadrados','Spline Cubico');
    %hold off;
    %C:\Users\Dany\Documents\MATLAB\Lab2\Imagenes
  
  
  