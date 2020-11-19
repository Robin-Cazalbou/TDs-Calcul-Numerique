// ------------ Exercice 3 -------------------------------

// ------------ Etude du temps d'exécution ----------------

A=rand(n,n);
B=rand(n,n);


// Pour matmat3b :
clear temps1;

n=10;
tic()
matmat3b(A,B);
temps1(1)=toc();

n=50;
tic()
matmat3b(A,B);
temps1(2)=toc();

n=100;
tic()
matmat3b(A,B);
temps1(3)=toc();

n=200;
tic()
matmat3b(A,B);
temps1(4)=toc();

n=500;
tic()
matmat3b(A,B);
temps1(5)=toc();

subplot(1,3,1)
plot([10,50,100,200,500],temps1)


// Pour matmat2b :
clear temps2;

n=10;
tic()
matmat2b(A,B);
temps2(1)=toc();

n=50;
tic()
matmat2b(A,B);
temps2(2)=toc();

n=100;
tic()
matmat2b(A,B);
temps2(3)=toc();

n=200;
tic()
matmat2b(A,B);
temps2(4)=toc();

n=500;
tic()
matmat2b(A,B);
temps2(5)=toc();

subplot(1,3,2)
plot([10,50,100,200,500],temps2)



// Pour matmat1b :
clear temps3;

n=10;
tic()
matmat1b(A,B);
temps3(1)=toc();

n=50;
tic()
matmat1b(A,B);
temps3(2)=toc();

n=100;
tic()
matmat1b(A,B);
temps3(3)=toc();

n=200;
tic()
matmat1b(A,B);
temps3(4)=toc();

n=500;
tic()
matmat1b(A,B);
temps3(5)=toc();

subplot(1,3,3)
plot([10,50,100,200,500],temps3)








