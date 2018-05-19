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
