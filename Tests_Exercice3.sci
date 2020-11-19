// ------------ Exercice 3 -------------------------------

// ------------ Etude du temps d'exécution ----------------

A=rand(n,n);
B=rand(n,n);


// ------------ Pour matmat3b :
clear temps1;

n=10;
temps1(1)=0;
for i=1:10
    tic()
    matmat3b(A,B);
    temps1(1)=toc()+temps1(1);
end
temps1(1) = temps1(1)/10;

n=50;
temps1(2)=0;
for i=1:10
    tic()
    matmat3b(A,B);
    temps1(2)=toc()+temps1(2);
end
temps1(2) = temps1(2)/10;

n=100;
temps1(3)=0;
for i=1:10
    tic()
    matmat3b(A,B);
    temps1(3)=toc()+temps1(3);
end
temps1(3) = temps1(3)/10;

n=200;
temps1(4)=0;
for i=1:10
    tic()
    matmat3b(A,B);
    temps1(4)=toc()+temps1(4);
end
temps1(4) = temps1(4)/10;

n=500;
temps1(5)=0;
for i=1:10
    tic()
    matmat3b(A,B);
    temps1(5)=toc()+temps1(5);
end
temps1(5) = temps1(5)/10;


subplot(1,3,1)
plot([10,50,100,200,500],temps1)






// ------------ Pour matmat2b :
clear temps1;

n=10;
temps1(1)=0;
for i=1:10
    tic()
    matmat2b(A,B);
    temps1(1)=toc()+temps1(1);
end
temps1(1) = temps1(1)/10;

n=50;
temps1(2)=0;
for i=1:10
    tic()
    matmat2b(A,B);
    temps1(2)=toc()+temps1(2);
end
temps1(2) = temps1(2)/10;

n=100;
temps1(3)=0;
for i=1:10
    tic()
    matmat2b(A,B);
    temps1(3)=toc()+temps1(3);
end
temps1(3) = temps1(3)/10;

n=200;
temps1(4)=0;
for i=1:10
    tic()
    matmat2b(A,B);
    temps1(4)=toc()+temps1(4);
end
temps1(4) = temps1(4)/10;

n=500;
temps1(5)=0;
for i=1:10
    tic()
    matmat2b(A,B);
    temps1(5)=toc()+temps1(5);
end
temps1(5) = temps1(5)/10;


subplot(1,3,2)
plot([10,50,100,200,500],temps1)






// -------------- Pour matmat1b :
clear temps1;

n=10;
temps1(1)=0;
for i=1:10
    tic()
    matmat1b(A,B);
    temps1(1)=toc()+temps1(1);
end
temps1(1) = temps1(1)/10;

n=50;
temps1(2)=0;
for i=1:10
    tic()
    matmat1b(A,B);
    temps1(2)=toc()+temps1(2);
end
temps1(2) = temps1(2)/10;

n=100;
temps1(3)=0;
for i=1:10
    tic()
    matmat1b(A,B);
    temps1(3)=toc()+temps1(3);
end
temps1(3) = temps1(3)/10;

n=200;
temps1(4)=0;
for i=1:10
    tic()
    matmat1b(A,B);
    temps1(4)=toc()+temps1(4);
end
temps1(4) = temps1(4)/10;

n=500;
temps1(5)=0;
for i=1:10
    tic()
    matmat1b(A,B);
    temps1(5)=toc()+temps1(5);
end
temps1(5) = temps1(5)/10;


subplot(1,3,3)
plot([10,50,100,200,500],temps1)

















