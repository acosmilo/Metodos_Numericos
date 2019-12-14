
function X = Metodo_Gauss (A, B)
[n n]=size(A);
Ab=[A';B]';
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
X=Sistem_T_sup(Ab(:,1:n),Ab(:,n+1));  
endfunction
