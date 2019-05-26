SIZE_1 = 36;
SIZE = 20000;

A = zeros (SIZE_1, 1);
B = zeros (SIZE, 1);
C = zeros (SIZE, 1);

for i = 1:SIZE_1
    tic
    fibonacci(i);
    A(i) = toc;
end

for i = 1:SIZE
    tic
    fibonacciDynamic(i);
    B(i) = toc;
end

for i = 1:SIZE
    tic
    fibonacciMatrix(i);
    C(i) = toc;
end

figure

B = rmoutliers(B);
C = rmoutliers(C);

B = smoothdata(B, 'sgolay');
C = smoothdata(C, 'sgolay');

subplot (4,1,1)
plot (1:size(A), A)
title ('Recursive Fib')

subplot (4,1,2)
plot (1:size(B), B)
title ('Dynamic Iterative Fib')

subplot (4,1,3)
plot (1:size(C), C)
title ('Matrix Exponentiation Fib')

subplot (4,1,4)
plot (1:size(B), B)
hold on
plot (1:size(C), C)
hold off
title ('Dynamic Iterative Fib vs Matrix Exponentiation Fib')