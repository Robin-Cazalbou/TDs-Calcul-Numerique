// ---------------------- TD 1 ---------------------------------

// ---------------------- Exercice 2 ----------------------------

//Questions 1 à 5 :
A = rand(3,3)

xex = rand(3,1)

b = A*xex

x = A\b

// Calculs d'erreurs :
err_av = norm(xex-x)/norm(xex)
err_ar = norm(b-A*x)/norm(b)


//Question 6 :

//n=100:
n = 100;

A = rand(n,n);
xex = rand(n,1);
b = A*xex;
x = A\b;

err_av = norm(xex-x)/norm(xex)
err_ar = norm(b-A*x)/norm(b)


//n=1000:
n=1000;

A = rand(n,n);
xex = rand(n,1);
b = A*xex;
x = A\b;

err_av = norm(xex-x)/norm(xex)
err_ar = norm(b-A*x)/norm(b)


//n=10000:
n=10000;
A = rand(n,n);
xex = rand(n,1);
b = A*xex;
x = A\b;

err_av = norm(xex-x)/norm(xex)
err_ar = norm(b-A*x)/norm(b)

















