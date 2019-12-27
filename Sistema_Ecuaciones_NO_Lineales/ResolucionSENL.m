%Ejercicio SENL
%Borro variables y limpio pantalla
clear all 
clc
%Seteo el formato a short
format short

%%Declaro variable i para saber el numero de iteraciones
%%i=0;

x0=0;
y0=0;
f1=@(x, y) (x.^2-10*x+y.^2+8);
f2=@(x, y) (x*y.^2+x-10*y+8);
df1x=@(x,y) (2*x-10);
df2y=@(x, y) (2*x*y-10);

x1=x0-f1(x0,y0)/df1x(x0,y0);
y1=y0-f2(x1,y0)/df2y(x1,y0);

while (abs(x1-x0)>0.00001 & abs(y1-y0)>0.00001 )
  x0=x1;
  y0=y1;
  
x1=x0-f1(x0,y0)/df1x(x0,y0);
y1=y0-f2(x1,y0)/df2y(x1,y0);
 %%i=i+1;
endwhile
  disp(x1)
  disp(y1)
   %% disp(i)
   
   
   %%%%%%%%%%%%
   
%Ejercicio SENL
%Borro variables y limpio pantalla
clear all 
clc
%Seteo el formato a short
format short

%%Declaro variable i para saber el numero de iteraciones
i=0;

x0=-8;
y0=0;
f1=@(x, y) (atan(y));
f2=@(x, y) (x*y^2+x-10*y+8);
% df1x=@(x,y) (0);
% df2y=@(x, y) (2*x*y-10);

 df1y=@(x,y) (1/(1+x.^2));
 df2x=@(x, y) (y^2+1);

%x1=x0-f1(x0,y0)/df1x(x0,y0);
%y1=y0-f2(x1,y0)/df2y(x1,y0);

x1=x0-f1(x0,y0)/df2x(x0,y0);
y1=y0-f2(x1,y0)/df1y(x1,y0);

while (abs(x1-x0)>0.00001 & abs(y1-y0)>0.00001 )
  x0=x1;
  y0=y1;
  
%x1=x0-f1(x0,y0)/df1x(x0,y0);
%y1=y0-f2(x1,y0)/df2y(x1,y0);

x1=x0-f1(x0,y0)/df2x(x0,y0);
y1=y0-f2(x1,y0)/df1y(x1,y0);


 i=i+1;
endwhile
  disp(x1)
  disp(y1)
    disp(i)