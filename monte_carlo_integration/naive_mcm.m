function[result] = naive_mcm(fun, a, b, n)
    dim = length(a);
    result = 0;

    for i = 1:n
        x = a + rand(1, dim) .* (b - a);
        result += fun(x) * prod(b - a) / n;
    end
end

%!test
%! result = naive_mcm(@prod, zeros(1, 3), ones(1, 3), 1e3);
%! assert(result, 1/8, 1e-2);
