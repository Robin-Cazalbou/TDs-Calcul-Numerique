// ------------ Exercice 3 -------------------------------

// ------------ Etude du temps d'exécution ----------------

// n=10 :
n=10;
A=rand(n,n);
B=rand(n,n);

tic()
matmat3b(A,B);
disp(toc())

tic()
matmat2b(A,B);
disp(toc())

tic()
matmat1b(A,B);
disp(toc())



// n=50 :
n=50;
A=rand(n,n);
B=rand(n,n);

tic()
matmat3b(A,B);
disp(toc())

tic()
matmat2b(A,B);
disp(toc())

tic()
matmat1b(A,B);
disp(toc())



// n=100 :
n=100;
A=rand(n,n);
B=rand(n,n);

tic()
matmat3b(A,B);
disp(toc())

tic()
matmat2b(A,B);
disp(toc())

tic()
matmat1b(A,B);
disp(toc())
