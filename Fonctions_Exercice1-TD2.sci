
function [e, d, c] = tridiag_lu(A)
    n = size(A)(1);
    
    e(1) = A(2,1)/A(1,1);
    for i=1:n-2
        e(i+1) = A(i+2,i+1)/(A(i+1,i+1) - e(i)*A(i,i+1) )
    end
    
    d(1) = A(1,1);
    for i=2:n
        d(i) = A(i,i) - e(i-1)*A(i-1,i);
    end
    
    for i=1:n-1
        c(i) = A(i,i+1);
    end
    
endfunction
