%Ejercicio Metodo de Newton

clear all
clc
pkg load symbolic
syms x
f(x)=2+2*x^3+sin(x)
x0=-10;
g(x)=diff(f,x)

%Formula Newton

x1=x0-eval(f(x0))/eval(g(x0));

while abs(x1-x0)>0.00001
x0=x1;
x1=x0-eval(f(x0))/eval(g(x0));
endwhile

resul=x1