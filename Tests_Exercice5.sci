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


X = [1;10;30;50];
Y = [med_temps(1); med_temps(10); med_temps(30); med_temps(50)];
for i = 1:n
    interpolation(i) = myinterpol(i,X,Y);
end


subplot(1,3,1)
plot([1:n]', [med_err_av ])


subplot(1,3,2)
plot([1:n]', [med_err_ar])


subplot(1,3,3)
plot([1:n]', [med_temps interpolation])

