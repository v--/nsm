function[result] = naive_mcm(fun, a, b, n)
    dim = length(a);
    y = 0;

    for i = 1:n
        x = a + rand(dim, 1) .* (b - a);
        y += fun(x) * prod(b - a) / n;
    end

    result = y;
end

%!test
%! result = naive_mcm(@(x) 1/sqrt(x), 0, 1, 1e4);
%! assert(result, 2, 0.1);

%!test
%! result = naive_mcm(@(x) e^(-x), 0, 1, 1e3);
%! assert(result, 1 - 1/e, 0.1);

%!test
%! result = naive_mcm(@(x) prod(x), [0; 0], [1; 1], 1e3);
%! assert(result, 1/4, 0.1);
