// ---------------- Tests de gausskij3b ---------------------
clear A xex b x err_av err_ar med_err_av med_err_ar;

for n=1:50
    
    for i=1:50
        A=rand(n,n);
        xex=rand(n,1);
        b=A*xex;
        
        tic();
        x = gausskij3b(A,b);
        temps(n,i) = toc();
        
        err_av(n,i) = norm(x-xex)/norm(xex);
        err_ar(n,i) = norm(b-A*x)/norm(b);
    end
    
    med_err_av(n) = median(err_av(n,:));
    med_err_ar(n) = median(err_ar(n,:));
    med_temps(n) = median(temps(n,:));
    
end


//=============== Affichage graphique =======================

subplot(1,2,1)
plot([1:n], [med_err_av med_err_ar])


for i=1:n
    allure_theo(i) = (0.095/80000)*2*i^3/3; //0.095/80000 = coefficient devant le 2n^3/3 prenant en compte le temps d'exécution d'une opération, en moyenne
end

subplot(1,2,2)
plot([1:n], [med_temps allure_theo])

