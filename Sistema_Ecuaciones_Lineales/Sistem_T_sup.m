function X = Sistem_T_sup (A, B)

n=size(A)(1);
X(n)=B(n)/A(n,n);

for i=n-1:-1:1
X(i)=(B(i)-(A(i,(i+1:n))*X((i+1):n)'))/(A(i,i));
endfor

endfunction
