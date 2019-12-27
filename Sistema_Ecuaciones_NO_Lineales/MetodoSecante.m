%Ejercicio Metodo de la Secante


clear all
clc
pkg load symbolic
syms x
f(x)=2+2*x^3+sin(x);
% Para obterner la funcion en LaTeX latex(f)
x0=-11.2
x1=10.7

x2=x1-((x1-x0)*eval(f(x1))/(eval(f(x1))-eval(f(x0))));

while abs(x2-x1)>0.00001
  x0=x1;
  x1=x2;
x2=x1-((x1-x0)*eval(f(x1))/(eval(f(x1))-eval(f(x0))));
endwhile
resul=x2