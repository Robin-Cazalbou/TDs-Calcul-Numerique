
function [L, U] = mylu3b(A)
    n = size(A)(1);
    
    for k=1:n-1
        for i=k+1:n
            A(i,k) = A(i,k)/A(k,k);
        end
        
        for i=k+1:n
            for j=k+1:n
                A(i,j) = A(i,j) - A(i,k)*A(k,j);
            end
        end
        
    end
    
    U = triu(A);
    L = eye(n,n);
    L = L + tril(A,-1); //récupère les valeurs tringulaires inférieures, strictement sous la diagonale
    
endfunction


function [L, U] = mylu1b(A)
    n = size(A)(1);
    
    for k=1:n-1
        A(k+1:n,k) = A(k+1:n,k)./A(k,k);
        A(k+1:n,k+1:n) = A(k+1:n,k+1:n) - A(k+1:n,k)*A(k,k+1:n);
    end
    
    U = triu(A);
    L = eye(n,n);
    L = L + tril(A,-1); //récupère les valeurs tringulaires inférieures, strictement sous la diagonale
    
endfunction


/*
function [L, U, P] = mylu(A)
    n = size(A)(1);
    
    for k=1:n-1
        row = [1:n]; //pour la permuation
        [piv,r] = max(abs(A(k:n,k))); //pivot et sa ligne
        r = k-1+r;
        
        if r~=k
            new = A(r,:);
            A(r,:) = A(k,:);
            A(k;:) = new;
        end
        
        A(k+1:n,k) = A(k+1:n,k)./A(k,k);
        A(k+1:n,k+1:n) = A(k+1:n,k+1:n) - A(k+1:n,k)*A(k,k+1:n);
    end
    
    U = triu(A);
    L = eye(n,n);
    L = L + tril(A,-1); //récupère les valeurs tringulaires inférieures, strictement sous la diagonale
    
endfunction
*/












