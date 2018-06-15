function[result] = stratified_mcm(fun, a, b, n, m)
    % -- stratified_mcm (FUN, A, B, N, M)
    %     Use stratification to improve the convergence of Monte Carlo integration.
    %
    %     FUN is the integrand, A and B are the bounding vectors, N is the number
    %     of iterations and M >= 2 is the number of intervals that each dimension
    %     gets subdivided into.
    dim = length(a);
    result = 0;

    if mod(n, m) > 0
        error('M must divide N.')
    end

    directions = power_expansion(0:m^dim, m);
    int_direction = (b - a) / m;

    for i = 1:length(directions)
        a_ = a + directions(i, :) .* int_direction;
        b_ = a_ + int_direction;
        result += naive_mcm(fun, a_, b_, n / m);
    end
end

%!test
%! result = stratified_mcm(@prod, zeros(1, 3), ones(1, 3), 1e2, 10);
%! assert(result, 1/8, 1e-2);
