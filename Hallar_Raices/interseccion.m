clear all; close all; clc;
f1=inline('cos(x)*cosh(x)+1'); 

ezplot(f1,[0 12]);
grid on
legend('Funcion 1')
xlabel('Eje x')
ylabel('Eje y')
title('Identificador de Interseccion')
%axis([-10 10,-15 15])
