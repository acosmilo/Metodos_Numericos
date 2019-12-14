
function  B = Inter_Filas (A,i,j)

B= A;

 B(i,:)=A(j,:);
 B(j,:)=A(i,:);
 
endfunction
