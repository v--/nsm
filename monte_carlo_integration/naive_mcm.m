function[m, s] = naive_mcm(fun, a, b, n)
    % -- [M, S] = naive_mcm (FUN, A, B, N)
    %     Use the naive MCM integration algorithm, i.e. simply plug a completely
    %     random (scaled) point from the unit hypercube into FUN at each
    %     iteration.
    %
    %     M is the approximate value of the integral and S is the estimate of the
    %     variance of the underlying random variable.
    dim = length(a);
    [m, s] = integrate(fun, a, b, rand(n, dim));
end

%!test
%! result = naive_mcm(@exp, 0, 1, 1e4);
%! assert(result, e - 1, 1e-2);
