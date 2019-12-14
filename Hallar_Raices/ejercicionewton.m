%Ejercicio Metodo de Newton
x0=-10;
f=@(x) (exp(x)-1.5-atan(x)); %La funcion 
g=@(x) (exp(x)-1/(1+x^2)); %Su Derivada
%Formula Newton

x1=x0-f(x0)/g(x0);

while abs(x1-x0)>0.00001
  x0=x1;
  x1=x0-f(x0)/g(x0);
endwhile
  disp(x1)