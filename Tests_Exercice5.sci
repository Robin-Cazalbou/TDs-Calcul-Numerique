// ---------------- Tests de gausskij3b ---------------------
clear A xex b x err_av err_ar med_err_av med_err_ar;

for n=1:50
    
    for i=1:50
        A=rand(n,n);
        xex=rand(n,1);
        b=A*xex;
        
        //rajouter tic
        x = gausskij3b(A,b);
        //rajouter toc et stocker la valeur dans une nouvelle variable
        
        err_av(n,i) = norm(x-xex)/norm(xex);
        err_ar(n,i) = norm(b-A*x)/norm(b);
    end
    
    med_err_av(n) = median(err_av(n,:));
    med_err_ar(n) = median(err_ar(n,:));
    
end

plot([1:n], [med_err_av med_err_ar])
