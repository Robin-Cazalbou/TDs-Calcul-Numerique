
//============= Tests mylu3b ==================
clear n A L U temps err med_err med_temps interpolation;

for n=2:50
    
    for i=1:30
        A=rand(n,n);
        tic();
        [L,U] = mylu3b(A);
        temps(n,i) = toc();
        err(n,i) = norm(A-L*U)/norm(A);
    end
    
    med_err(n) = median(err(n,:));
    med_temps(n) = median(temps(n,:));
    
end

//---------------

subplot(3,2,1)
plot([2:50]', med_err(2:50))

X = [2;10;30;50];
Y = [med_temps(2); med_temps(10); med_temps(30); med_temps(50)]; //interpolation de degré 3
for i = 2:50
    interpolation(i) = myinterpol(i,X,Y);
end

subplot(3,2,2)
plot([2:50]', [med_temps(2:50) interpolation(2:50)])


pause


//============= Tests mylu1b ==================
clear n A L U temps err med_err med_temps interpolation;

for n=2:50
    
    for i=1:30
        A=rand(n,n);
        tic();
        [L,U] = mylu1b(A);
        temps(n,i) = toc();
        err(n,i) = norm(A-L*U)/norm(A);
    end
    
    med_err(n) = median(err(n,:));
    med_temps(n) = median(temps(n,:));
    
end

//---------------

subplot(3,2,3)
plot([2:50]', med_err(2:50))

X = [2;10;30;50];
Y = [med_temps(2); med_temps(10); med_temps(30); med_temps(50)]; //interpolation de degré 3
for i = 2:50
    interpolation(i) = myinterpol(i,X,Y);
end

subplot(3,2,4)
plot([2:50]', [med_temps(2:50) interpolation(2:50)])


pause


//============= Tests pivot partiel ============


























//============= Tests lu (de Scilab) ==================
clear n A L U temps err med_err med_temps interpolation;

for n=2:50
    
    for i=1:30
        A=rand(n,n);
        tic();
        [L,U] = lu(A);
        temps(n,i) = toc();
        err(n,i) = norm(A-L*U)/norm(A);
    end
    
    med_err(n) = median(err(n,:));
    med_temps(n) = median(temps(n,:));
    
end

//---------------

subplot(3,2,5)
plot([2:50]', med_err(2:50))

X = [2;10;30;50];
Y = [med_temps(2); med_temps(10); med_temps(30); med_temps(50)]; //interpolation de degré 3
for i = 2:50
    interpolation(i) = myinterpol(i,X,Y);
end

subplot(3,2,6)
plot([2:50]', [med_temps(2:50) interpolation(2:50)])




