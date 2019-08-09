function graficar(X1, YMatrix1, titulo)
%CREATEFIGURE(X1, YMATRIX1)
%  X1:  vector of x data
%  YMATRIX1:  matrix of y data

%  Auto-generated by MATLAB on 04-Jan-2016 21:41:03

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[-10 10]);
%% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[-120 20]);
hold(axes1,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(X1,YMatrix1,'Parent',axes1);
set(plot1(1),'DisplayName','Lagrange','Color',[1 0 1]);
set(plot1(2),'DisplayName','Minimos Cuadrados','LineStyle','-.',...
    'Color',[0 0 1]);
set(plot1(3),'DisplayName','Spline Cubico','LineStyle','--','Color',[0 1 1]);

% Create xlabel
xlabel({'x'},'Interpreter','latex');

% Create ylabel
ylabel({'f(x)'},'Interpreter','latex');

% Create title
title(titulo,'Interpreter','latex');

% Create legend
legend(axes1,'show');

