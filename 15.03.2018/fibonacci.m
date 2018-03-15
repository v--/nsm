% This is yet another exercise on Matlab itself, no stochastics here yet.
% This is the Fibonacci function, not the Fibonacci generator.
function[result] = fib_sequence_iter(n)
    result = [0, 1];

    for i = 3:n
        result(i) = result(i - 1) + result(i - 2);
    end
end

%!test
%! source 15.03.2018/fibonacci.m;
%! assert(fib_sequence_iter(10), [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]);

function[result] = fib_sequence_rec(n)
    if n == 1
        result = [0];
    elseif n == 2
        result = [0 1];
    else
        result = fib_sequence_rec(n - 1);
        result(n) = result(n - 1) + result(n - 2);
    end
end

%!test
%! assert(fib_sequence_rec(10), [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]);

function[result] = fib_scalar_iter(n)
    a = 0;
    b = 1;

    for i = 3:n
        temp = b;
        b = a + b;
        a = temp;
    end

    result = b;
end

%!test
%! assert(fib_scalar_iter(10), 34);

function[result] = fib_scalar_matrices(n)
    y = [0 1; 1 1]^(n-1) * [1; 0];
    result = y(2);
end

%!test
%! assert(fib_scalar_matrices(10), 34);
