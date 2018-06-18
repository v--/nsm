function[m] = quasi_mcm(fun, a, b, n, sequence_generator)
    % -- quasi_mcm (FUN, A, B, N, SEQUENCE_GENERATOR)
    %     Use the naive MCM integration algorithm but generate a point set by
    %     using a quasirandom sequence given by SEQUENCE_GENERATOR instead of
    %     using a pseudorandom generator.
    dim = length(a);
    m = integrate(fun, a, b, sequence_generator(n, dim));
end

% The sequences are sorted from least efficient to most efficient.
%!test
%! result = quasi_mcm(@exp, 0, 1, 1e2, @halton_sequence);
%! assert(result, e - 1, 0.02);

%!test
%! result = quasi_mcm(@exp, 0, 1, 1e2, @hammersley_point_set);
%! assert(result, e - 1, 0.01);

%!test
%! result = quasi_mcm(@exp, 0, 1, 1e2, @sobol_sequence);
%! assert(result, e - 1, 0.005);

%!test
%! result = quasi_mcm(@exp, 0, 1, 1e2, @faure_sequence);
%! assert(result, e - 1, 0.02);

% This is technically a nice sequence but the nondeterminism makes it bad when
% used with a low number of iterations.
%!test
%! result = quasi_mcm(@exp, 0, 1, 1e2, @scrambled_faure_sequence);
%! assert(result, e - 1, 0.2);
