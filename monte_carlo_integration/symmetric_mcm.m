function[result] = symmetric_mcm(fun, a, b, n)
    dim = length(a);
    y = 0;

    for i = 1:n
        x = a + rand(1, dim) .* (b - a);
        y += (fun(x) + fun(b - a - x)) * prod(b - a) / (2*n);
    end

    result = y;
end

%!test
%! result = symmetric_mcm(@(x) e^x, 0, 1, 1e3);
%! assert(result, e - 1, 1e-2);
