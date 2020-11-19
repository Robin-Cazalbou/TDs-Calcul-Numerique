
function [C] = matmat3b(A,B)
    C = zeros(size(A,'r'),size(B,'c'));
    for i=1:size(A,'r')
        for j=1:size(B,'c')
            for k=1:size(A,'c')
                C(i,j) = A(i,k)*B(k,j) + C(i,j);
            end
        end
    end
endfunction


function [C] = matmat2b(A,B)
    C = zeros(size(A,'r'),size(B,'c'));
    for i=1:size(A,'r')
        for j=1:size(B,'c')
            C(i,j) = A(i,[1:size(A,'c')])*B([1:size(B,'r')],j) + C(i,j);
        end
    end
endfunction


function [C] = matmat1b(A,B)
    C = zeros(size(A,'r'),size(B,'c'));
    for i=1:size(A,'r')
        C(i,[1:size(B,'c')]) = A(i,[1:size(A,'c')])*B + C(i,[1:size(B,'c')]);
    end
endfunction


