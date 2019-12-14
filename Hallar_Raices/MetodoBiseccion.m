a = 0.5;
b = 1.5;
aux=0;
f=@(w ) ((9.8*(sinh(w)-sin(w)))/(2*w.^2)-1);
while abs(b-a)>0.00001
if f(a)*f(b)<0
c=(a+b)/2 ;
if f(a)*f(c)<0
b=c;
else
a=c;
end
aux=aux+1;
else
disp ('Error en intervalo') ;
return
endif
endwhile

c

aux