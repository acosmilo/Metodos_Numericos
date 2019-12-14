%Ejercicio Metodo de la Secante
x0=-10;
x1=10;

f=@(x) (exp(x)-1.5-atan(x)); %La funcion 

%Formula Newton
  v1=fsolve(f,18);
x2=x1-((x1-x0)*f(x1))/(f(x1)-f(x0));

while abs(x2-x1)>0.00001
  x0=x1;
  x1=x2;
x2=x1-((x1-x0)*f(x1))/(f(x1)-f(x0));
endwhile
  disp(x2)

  disp(v1)