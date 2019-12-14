% funcion interpolacion por el método de Lagrange de puntos
function cont=interpolLagrange(x,fx)
s1=length(x);
s2=length(fx);
cont=0;
for k=1:s1   
    cont=cont+fx(k)*lagrange(x,k);
end
%Completar con la graficación 
x1=x(1):0.1:x(s1);
y1=polyval(cont,x1);

plot(x1,y1)
hold on
stem(x,fx,'r')

end


    