function X = Inverza_Matriz (A)
[n n]=size(A);
I=eye(n);
Ab=[A I];
for k=1:n
  [bb ll]=max(abs(Ab(k:n,k)));
  if bb==0
    error('La matriz es singular')
  endif
  m=k+ll-1;
  Ab=Inter_Filas(Ab,k,m);
  for j=k+1:n
  Ab=Operar_Filas(Ab,k,j,-Ab(j,k)/Ab(k,k));
  endfor
endfor

%Triangular Inferior
for k=n:-1:1
  for j=k-1:-1:1
    Ab = Operar_Filas(Ab,k,j,-Ab(j,k)/Ab(k,k));
  endfor
endfor

%Matriz diagonal de unos
for i=1:n
  Ab(i,:)= Ab(i,:)/Ab(i,i);
endfor

X=Ab(:,n+1:2*n);

endfunction