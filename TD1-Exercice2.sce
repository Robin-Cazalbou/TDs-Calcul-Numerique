// ---------------------- TD 1 ---------------------------------

// ---------------------- Exercice 2 ----------------------------
clear A b xex x;

//Questions 1 à 5 :

err_av=0;
err_ar=0;

for i=1:100
    
    A = rand(3,3)
    xex = rand(3,1)
    b = A*xex
    x = A\b
    
    err_av = norm(xex-x)/norm(xex) + err_av;
    err_ar = norm(b-A*x)/norm(b) + err_ar;
end
err_av = err_av/100;
err_ar = err_ar/100;

disp("Erreur avant : ", err_av)
disp("Erreur arrière : ", err_ar)






//Question 6 :

//n=100:
n = 100;

err_av=0;
err_ar=0;

for i=1:10
    
    A = rand(n,n);
    xex = rand(n,1);
    b = A*xex;
    x = A\b;
    
    err_av = norm(xex-x)/norm(xex) + err_av;
    err_ar = norm(b-A*x)/norm(b) + err_ar;
end
err_av = err_av/10;
err_ar = err_ar/10;

disp("Erreur avant (n=100) : ", err_av)
disp("Erreur arrière (n=100) : ", err_ar)


//n=1000:
n = 1000;

err_av=0;
err_ar=0;

for i=1:10
    
    A = rand(n,n);
    xex = rand(n,1);
    b = A*xex;
    x = A\b;
    
    err_av = norm(xex-x)/norm(xex) + err_av;
    err_ar = norm(b-A*x)/norm(b) + err_ar;
end
err_av = err_av/10;
err_ar = err_ar/10;

disp("Erreur avant (n=1000) : ", err_av)
disp("Erreur arrière (n=1000) : ", err_ar)


//n=5000:
n = 5000;

err_av=0;
err_ar=0;

for i=1:10
    
    A = rand(n,n);
    xex = rand(n,1);
    b = A*xex;
    x = A\b;
    
    err_av = norm(xex-x)/norm(xex) + err_av;
    err_ar = norm(b-A*x)/norm(b) + err_ar;
end
err_av = err_av/10;
err_ar = err_ar/10;

disp("Erreur avant (n=5000) : ", err_av)
disp("Erreur arrière (n=5000) : ", err_ar)







