function[result] = symmetric_exp_qmcm(a, b, sequence_generator, n)
    dim = length(a);
    y = 0;
    r = sequence_generator(n, dim);

    for i = 1:n
        x = a + r(:, i)' .* (b - a);
        y += (e^x + e^(1-x)) * prod(b - a) / (2*n);
    end

    result = y;
end

%!test
%! result = symmetric_exp_qmcm(0, 1, @halton_sequence, 1e3);
%! assert(result, e - 1, 1e-2);
