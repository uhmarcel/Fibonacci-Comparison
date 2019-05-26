# Fibonacci Execution Time Comparison
A comparison on the execution time of three different implementations of the Fibonacci sequence in MATLAB.

![Alt text](out/data.PNG?raw=true "Comparison graph")

# Description

The comparison shows three different implementations:  

### Recursive implementation:
The most common implementation of the Fibonacci sequence due to its simplicity. Each recursive call creates two additional calls for the previous values, which creates multiple computations of the same values. Time complexity O(2^n).
```MATLAB
function [f] = fibonacci(n) 
    if n == 1
        [f] = 0;
    elseif n == 2
        [f] = 1;  
    else
        [f] = fibonacci(n-1) + fibonacci(n-2);
    end
end    
```

### Iterative implementation:
This implementation solves the issue of recomputing results by dynamically allocating the previous values. Instead of recursion, the algorithm performs iteration starting from the beginning of the sequence. Time complexity O(n).
```MATLAB
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
```

### Matrix-exponentiation implementation:
This implementation computes the Fibonacci sequence using a mathematical expression in terms of matrices. Further values on the series are calculated by performing exponentiation on the matrix. This algorithm takes advantage of the use of the power operation, as it can be implemented with O(log n) time complexity, which is the case on MATLAB.
```MATLAB
function [f] = fibonacciMatrix(n)
    M = [1 1; 1 0];
    
    if (n == 1)
            f = 0;
            return
    end
    
    F = M ^ (n-2);
    f = F(1);   
    
end
```
  
  
# Conclusion
As can be seen from the figures, the execution time of the three implementations correlate with their expected time complexity.

The recursive algorithm has the worst performance by far. The largest member of the sequence computed is 36, as from that point on the execution time jumps from seconds to minutes. 

Both the iterative and matrix exponentiation implementations have better performance. At the beginning the iterative approach has a better execution time, as matrix exponentiation has larger overhead. The iterative algorithm grows linearly and matrix exponentiation logarithmically. At about Fibonacci member no. 6000, both algorithms have similar execution time. From that point on, matrix exponentiation achieves better performance due to slower growth. 

Even though matrix exponentiation seems to be the best approach, it depends on the application, as to take advantage on it there must be a need to compute very large Fibonacci numbers such that the total efficiency overcomes the initial overhead cost. For cases requiring small to medium values, the low overhead iterative implementation offers the best performance.
