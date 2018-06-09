function[result] = symmetric_qmcm(fun, a, b, sequence_generator, n)
    dim = length(a);
    y = 0;
    r = sequence_generator(n, dim);

    for i = 1:n
        x = a + r(i, :) .* (b - a);
        y += (fun(x) + fun(b - a - x)) * prod(b - a) / (2*n);
    end

    result = y;
end

%!test
%! result = symmetric_qmcm(@(x) e^x, 0, 1, @halton_sequence, 1e2);
%! assert(result, e - 1, 1e-2);

%!test
%! result = symmetric_qmcm(@(x) e^x, 0, 1, @sobol_sequence, 1e2);
%! assert(result, e - 1, 1e-2);
