function [L, U, P] = LUP(A)
[n, n1] = size(A);
if n ~= n1
error('No se puede descompones')
endif
L=eye(n);
P=eye(n);
for k=1:n-1
  [m1,m2]=max(abs(A(k:n,k)));
  if m1==0
    disp('La matriz es singular');
  endif
    p=k+m2-1;
    A=Inter_Filas(A,k,p);
    U=A;
    P=Inter_Filas(P,k,p);
    for k=1:n-1
    for j=k+1:n
      factor1=(U(j,k)/U(k,k));
      U(j,k:n)=U(j,k:n)-(U(j,k)/U(k,k))*U(k,k:n);
      L(j,k)=factor1;
    endfor
    endfor
endfor
end