function X = Sistem_T_inf (A, B)
n=size(A)(1);

X(1)=B(1)/A(1,1);

for i=2:1:n

X(i)=(B(i)-(A(i,(1:i-1))*(X(1:i-1))'))/(A(i,i));
endfor

endfunction
