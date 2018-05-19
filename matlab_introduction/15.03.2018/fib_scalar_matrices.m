function[result] = fib_scalar_matrices(n)
    y = [0 1; 1 1]^(n-1) * [1; 0];
    result = y(2);
end

%!test
%! assert(fib_scalar_matrices(10), 34);
