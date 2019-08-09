%%%%%%%%%%%%%%%%%%%%%%%%%% Metodo de Runge Kutta %%%%%%%%%%%%%%%%%%%%%%%%%%
clear; clc;
f=@(t,x) -50*(x - cos(t)); 
t0=0; 
tf=(3*pi)/2;
x0=0;
n=100;
[t,x]=runge(f,t0,tf,x0,n); 

hold on
plot(t,x,'b')
xlabel({'x'},'Interpreter','latex');
ylabel({'f(x)'},'Interpreter','latex');
title({'dx(t)/dt = -50*(x - cos(t)), con Runge-Kutta'},'Interpreter','latex');
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Metodo Multipasos %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%f=@(t,x) -50*(x - cos(t)); 
%t0=0; 
%tf=(3*pi)/2;
%x0=0;
%n=100;
%[t,x] = multipasos(f,x0,t0,tf,n);

%hold on
%plot(t,x,'b')
%xlabel({'x'},'Interpreter','latex');
%ylabel({'f(x)'},'Interpreter','latex');
%title({'dx(t)/dt = -50*(x - cos(t)), con Multipasos'},'Interpreter','latex');
%hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Metodo Adaptativo %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%f=@(t,x) -50*(x - cos(t)); 
%t0=0; 
%tf=(3*pi)/2;
%x0=0;
%n=100;
%[t,x]=adaptativo(f,t0,tf,x0,n); 

%hold on
%plot(t,x,'b')
%xlabel({'x'},'Interpreter','latex');
%ylabel({'f(x)'},'Interpreter','latex');
%title({'dx(t)/dt = -50*(x - cos(t)), con Metodo Adaptativo'},'Interpreter','latex');
%hold off
