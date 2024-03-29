function grafico(Y1, Y2, Y3, Y4, Y5, titulo, namey)
%CREATEFIGURE(Y1, Y2, Y3, Y4, Y5)
%  Y1:  vector of y data
%  Y2:  vector of y data
%  Y3:  vector of y data
%  Y4:  vector of y data
%  Y5:  vector of y data

%  Auto-generated by MATLAB on 04-Dec-2015 16:40:49

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'on');

% Create plot
plot(Y1,'DisplayName','Biseccion','Marker','*',...
    'Color',[0.854901969432831 0.701960802078247 1]);

% Create plot
plot(Y2,'DisplayName','Punto Fijo','Marker','x','Color',[0 1 0]);

% Create plot
plot(Y3,'DisplayName','Secante','Marker','diamond','Color',[1 0 1]);

% Create plot
plot(Y4,'DisplayName','Regula Falsi','Marker','o','Color',[0 1 1]);

% Create plot
plot(Y5,'DisplayName','Newton-Raphson','Marker','square',...
    'Color',[0 0.447058826684952 0.74117648601532]);

% Create xlabel
xlabel('Iteraciones','Interpreter','latex');

% Create ylabel
ylabel(namey,'Interpreter','latex');

% Create title
title(titulo,'FontSize',12,...
    'Interpreter','latex');

% Create legend
legend(axes1,'show');

