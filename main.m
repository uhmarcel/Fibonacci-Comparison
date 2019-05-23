

A = zeros (34, 1);
B = zeros (1400, 1);
C = zeros (1400, 1);

for i = 1:34
    tic
    fibonacci(i)
    A(i) = toc;
end

for i = 1:1400
    tic
    fibonacciDynamic(i)
    B(i) = toc;
end

for i = 1:1400
    tic
    fibonacciMatrix(i)
    C(i) = toc;
end

figure

subplot (3,1,1)
plot (A)
title ('Recursive Fib')

subplot (3,1,2)
plot (B)
title ('Dynamic Iterative Fib')

subplot (3,1,3)
plot (C)
title ('Matrix Exponentiation Fib')
