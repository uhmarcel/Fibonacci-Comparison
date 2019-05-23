% Fibonacci using matrix exponentiation
% Time complexity O(log n) // Depends on matlab's implementation of pow

function [f] = fibonacciMatrix(n)
    M = [1 1; 1 0];
    
    if (n == 1)
            f = 0;
            return
    end
    
    F = M ^ (n-2);
    f = F(1);   
    
end

