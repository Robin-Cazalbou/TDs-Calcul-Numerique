
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


// Factorisation LU avec méthode du pivot partiel
function [L, U, P] = mylu(A)
    n = size(A)(1);
    row = [1:n]; //vecteur des permutations (au début)
    
    for k=1:n-1
        [piv,ind] = max(abs(A(k:n,k))); //pivot et l'indice de sa ligne
        ind = k-1+ind; //convertit l'indice local en indice global
        q = row(1,ind); // indice de la ligne de A contenant le pivot partiel (stockage temporaire pour après)
        
        if ind~=k //uniquement si ce n'est pas déjà la "première" ligne
            new = A(ind,:); //stockage temporaire de la ligne pour l'échange des lignes
            A(ind,:) = A(k,:); //échange
            A(k,:) = new; //échange
            
            row(1,ind) = row(1,k); //mise à jour du vecteur des permutations (ligne ind permutée avec ligne k)
            row(1,k) = q;
        end
        
        A(k+1:n,k) = A(k+1:n,k)./A(k,k);
        A(k+1:n,k+1:n) = A(k+1:n,k+1:n) - A(k+1:n,k)*A(k,k+1:n);
    end
    
    P = eye(n,n)(row,:); //on construit la matrice des permutations en lisant les lignes de la matrice identité dans l'ordre du vecteur des permutations
    U = triu(A);
    L = eye(n,n);
    L = L + tril(A,-1); //récupère les valeurs tringulaires inférieures, strictement sous la diagonale
    
endfunction













