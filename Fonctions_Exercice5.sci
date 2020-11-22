
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
