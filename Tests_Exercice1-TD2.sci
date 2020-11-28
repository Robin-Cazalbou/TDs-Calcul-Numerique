clear L U err temps n A;

for n=2:200
    
    A = diag(rand(n,1)) + diag(rand(n-1,1),1) + diag(rand(n-1,1),-1);
    
    for i=1:50
        tic();
        [e, d, c] = tridiag_lu(A);
        temps(n,i) = toc();
        
        L = diag(e,-1) + eye(n,n);
        U = diag(d) + diag(c,1);
        
        err(n,i) = norm(A-L*U)/norm(A);
    end
    
    med_err(n) = median(err(n,:));
    med_temps(n) = median(temps(n,:));
    
end


subplot(1,2,1)
plot([2:50]', med_err(2:50))

subplot(1,2,2)
plot([2:50]', med_temps(2:50))


