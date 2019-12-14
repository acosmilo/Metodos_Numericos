

function B = Operar_Filas (A,i,j,m)

 B= A;

 B(j,:)=A(j,:)+m*A(i,:);
 %i es la del pibote
 %j donde opera
 
endfunction
