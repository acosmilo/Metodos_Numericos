%Problema Nº 
% Método de Newton para interpolación
function C=newtonInterpolacion2(x,f)
m=length(x);
A=zeros(m,m);
A(:,1)=f';
for j=2:m
    for k=j:m
        A(k,j)=(A(k,j-1)-A(k-1,j-1))/(x(k)-x(k-j+1));
    end
    
end
 C=A(m,m);
for k=m-1:-1:1
    C=conv(C,poly(x(k)));
     mm=length(C);
    C(mm)=C(mm)+A(k,k);
end
end
