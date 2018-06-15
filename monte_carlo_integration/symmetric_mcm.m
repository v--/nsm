function[result] = symmetric_mcm(fun, a, b, n)
    % -- symmetric_mcm (FUN, A, B, N)
    %     Reuse each of the points in the naive Monte Carlo integration algorithm
    %     by taking it's symmetric point about the center of [a, b].
    %
    %     The goal of this algorithm is to reduce the variance of the underlying
    %     random variable.
    dim = length(a);
    result = 0;

    for i = 1:n
        x = a + rand(1, dim) .* (b - a);
        result += (fun(x) + fun(b - a - x)) * prod(b - a) / (2*n);
    end
end

%!test
%! result = symmetric_mcm(@(x) e^x, 0, 1, 1e3);
%! assert(result, e - 1, 1e-2);
