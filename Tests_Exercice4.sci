
n=100;

A=rand(n,n);
A=triu(A);

xex=rand(n,1);
b=A*xex;


x_app = usolve(A,b);

// Erreurs :
err_av = norm(x_app-xex)/norm(xex)

err_ar = norm(b-A*x_app)/norm(b)
