function[m, s] = symmetric_mcm(fun, a, b, n)
    % -- [M, S] = symmetric_mcm (FUN, A, B, N)
    %     Reuse each of the points in the Monte Carlo integration algorithm
    %     by taking it's symmetric point about the center of [a, b].
    %
    %     The goal of this algorithm is to reduce the variance of the underlying
    %     random variable.
    %
    %     M is the approximate value of the integral and S is the estimated
    %     variance of the underlying random variable.
    [m, s] = naive_mcm(@(x) (fun(x) + fun(a + b - x)) / 2, a, b, n);
end

%!test
%! result = symmetric_mcm(@exp, 0, 1, 1e3);
%! assert(result, e - 1, 1e-2);

%!test
%! result = symmetric_mcm(@exp, 1, 2, 1e3);
%! assert(result, e^2 - e, 1e-2);

%!test
%! [_, v1] = naive_mcm(@exp, 0, 1, 1e2, 10);
%! [_, v2] = symmetric_mcm(@exp, 0, 1, 1e2, 10);
%! assert(v1 >= v2);
