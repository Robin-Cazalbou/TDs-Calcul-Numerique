clear err_av err_ar A xex b x med_err_av med_err_ar;

/*
compteur =0;
for n=10:100
    compteur = compteur +1;
    err_av(compteur)=0;
    err_ar(compteur)=0;
    
    for i=1:100
    A=triu(rand(n,n));
    xex=rand(n,1);
    b=A*xex;
    
    x=usolve(A,b);
    err_av(compteur) = norm(x-xex)/norm(xex) + err_av(compteur);
    err_ar(compteur) = norm(b-A*x)/norm(b) + err_ar(compteur);    
    end
    
    err_av(compteur) = err_av(compteur)/10;
    err_ar(compteur) = err_ar(compteur)/10;
end

plot("nl",[10:100], err_av)
*/



compteur = 0;
for n=10:150
    compteur = compteur + 1;
    
    for i=1:100
    A=triu(rand(n,n));
    xex=rand(n,1);
    b=A*xex;
    
    x=usolve(A,b);
    err_av(compteur,i) = norm(x-xex)/norm(xex);
    err_ar(compteur,i) = norm(b-A*x)/norm(b);    
    end
    
    med_err_av(compteur) = median(err_av(compteur,:));
    med_err_ar(compteur) = median(err_ar(compteur,:));
end

subplot(2,2,1)
plot("nl",[10:150], med_err_av)
subplot(2,2,2)
plot("nl",[10:150], med_err_ar)


clear err_av err_ar A xex b x med_err_av med_err_ar;

compteur = 0;
for n=10:150
    compteur = compteur + 1;
    
    for i=1:100
    A=tril(rand(n,n));
    xex=rand(n,1);
    b=A*xex;
    
    x=lsolve(A,b);
    err_av(compteur,i) = norm(x-xex)/norm(xex);
    err_ar(compteur,i) = norm(b-A*x)/norm(b);    
    end
    
    med_err_av(compteur) = median(err_av(compteur,:));
    med_err_ar(compteur) = median(err_ar(compteur,:));
end

subplot(2,2,3)
plot("nl",[10:150], med_err_av)
subplot(2,2,4)
plot("nl",[10:150], med_err_ar)















