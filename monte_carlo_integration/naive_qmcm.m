function[result] = naive_qmcm(fun, a, b, sequence_generator, n)
    % -- naive_qmcm (FUN, A, B, SEQUENCE_GENERATOR, N)
    %     Use the naive MCM integration algorithm but generate a point set by
    %     using a quasirandom sequence given by SEQUENCE_GENERATOR instead of
    %     using a pseudorandom generator.
    dim = length(a);
    dx = prod(b - a) / n;
    result = 0;
    r = sequence_generator(n, dim);

    for i = 1:n
        x = a + r(i, :) .* (b - a);
        result += fun(x) * dx;
    end
end

% The sequences are sorted from least efficient to most efficient.
%!test
%! result = naive_qmcm(@prod, zeros(1, 3), ones(1, 3), @halton_sequence, 1e2);
%! assert(result, 1/8, 0.01);

%!test
%! result = naive_qmcm(@prod, zeros(1, 3), ones(1, 3), @hammersley_point_set, 1e2);
%! assert(result, 1/8, 0.005);

%!test
%! result = naive_qmcm(@prod, zeros(1, 3), ones(1, 3), @sobol_sequence, 1e2);
%! assert(result, 1/8, 0.005);

%!test
%! result = naive_qmcm(@prod, zeros(1, 3), ones(1, 3), @faure_sequence, 1e2);
%! assert(result, 1/8, 0.005);

% This is technically a very nice sequence but the nondeterminism makes it bad
% when used with a low number of iterations.
%!test
%! result = naive_qmcm(@prod, zeros(1, 3), ones(1, 3), @scrambled_faure_sequence, 1e2);
%! assert(result, 1/8, 0.025);
