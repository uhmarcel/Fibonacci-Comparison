% Iterative fibonacci, saving the state
% Time complexity O(n)

function [output] = fibonacciDynamic(n)
    x = 0;
    y = 1;
    if (n==1) 
        output = 0;
        return
        
    elseif (n==2) 
        output = 1;
        return
    else 
        for i = 2:n
            t = y;
            y = x + y;
            x = t;
        end
    end
    output = t;
end
