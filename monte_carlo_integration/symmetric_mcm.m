function[result] = symmetric_mcm(fun, a, b, n)
    % -- symmetric_mcm (FUN, A, B, N)
    %     Reuse each of the points in the naive Monte Carlo integration algorithm
    %     by taking it's symmetric point about the center of [a, b].
    %
    %     The goal of this algorithm is to reduce the variance of the underlying
    %     random variable.
    result = naive_mcm(@(x) (fun(x) + fun(b - a - x)) / 2, a, b, n);
end

%!test
%! result = symmetric_mcm(@(x) e^x, 0, 1, 1e3);
%! assert(result, e - 1, 1e-2);
