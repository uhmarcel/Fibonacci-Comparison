% Classic fibonacci with recursion
% Time complexity O(2^n)

function [f] = fibonacci(n) 
    if n == 1
        [f] = 0;
    elseif n == 2
        [f] = 1;  
    else
        [f] = fibonacci(n-1) + fibonacci(n-2);
    end
end    
    