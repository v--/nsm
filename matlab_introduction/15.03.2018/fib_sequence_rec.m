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
