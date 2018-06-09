function[result] = naive_qmcm(fun, a, b, sequence_generator, n)
    dim = length(a);
    y = 0;
    r = sequence_generator(n, dim);

    for i = 1:n
        x = a + r(i, :) .* (b - a);
        y += fun(x) * prod(b - a) / n;
    end

    result = y;
end

%!test
%! result = naive_qmcm(@prod, zeros(1, 3), ones(1, 3), @halton_sequence, 1e2);
%! assert(result, 1/8, 1e-2);

%!test
%! result = naive_qmcm(@prod, zeros(1, 3), ones(1, 3), @sobol_sequence, 1e2);
%! assert(result, 1/8, 1e-2);

%!test
%! result = naive_qmcm(@prod, zeros(1, 3), ones(1, 3), @faure_sequence, 1e2);
%! assert(result, 1/8, 1e-2);
