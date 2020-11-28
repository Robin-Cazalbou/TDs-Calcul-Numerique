
function [x] = gausskij3b(A,b)
    n=size(A,'r');
    
    for k=1:n-1
        for i=k+1:n
            m_ik = A(i,k)/A(k,k);
            b(i) = b(i) - m_ik*b(k);
            for j=k+1:n
                A(i,j) = A(i,j) - m_ik*A(k,j);
            end
        end
    end
    
    x = usolve(A,b);
    
endfunction


//=============== Interpolation ====================

function [Lag]= polyLag(x, Xi)
    polyx = 1;
    
    for i=1:length(Xi) //On calcule avec ces deux boucles l'image de x par le i-ème polynôme de Lagrange
        for j=1:(i-1)
            polyx = polyx*( x-Xi(j) )/( Xi(i)-Xi(j) ) ;
        end
        for j=(i+1):length(Xi)
            polyx = polyx*( x-Xi(j) )/( Xi(i)-Xi(j) ) ;
        end
        Lag(i) = polyx;
        polyx = 1 ;
    end
endfunction

function [p]= myinterpol(x, Xi, Yi)
    p = 0;
    
    for i=1:length(Xi)
        p = p + Yi(i)*polyLag(x, Xi)(i); //on prend la i-ème coordonnée de polyLag pour avoir le i-ème polynôme de Lagrange
    end
endfunction









