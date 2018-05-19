function[result] = fib_sequence_iter(n)
    result = [0, 1];

    for i = 3:n
        result(i) = result(i - 1) + result(i - 2);
    end
end

%!test
%! assert(fib_sequence_iter(10), [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]);
