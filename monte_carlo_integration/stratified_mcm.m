function[i, v] = stratified_mcm(fun, a, b, n, m)
    % -- [I, V] = stratified_mcm (FUN, A, B, N, M)
    %     Use stratification to improve the convergence of Monte Carlo integration.
    %
    %     FUN is the integrand, A and B are the bounding vectors, N is the number
    %     of iterations and M >= 2 is the strata count (the number of
    %     subparallelotopes that the integration domain gets subdivided into.
    %
    %     I is the approximate value of the integral and V is the estimated
    %     variance of the underlying random variable.
    dim = length(a);
    i = 0;
    v = 0;

    if mod(n, m) > 0
        error('M must divide N.')
    end

    points_per_step = n / m;
    dimension_subdivisions = round(m^(1/dim));

    if dimension_subdivisions^dim ~= m
        error('M must be an exact DIM-th root, where DIM is the of the dimension of A.')
    end

    directions = power_expansion(0:m - 1, dimension_subdivisions);
    int_direction = (b - a) ./ dimension_subdivisions;

    for k = 1:m
        a_ = a + directions(k, :) .* int_direction;
        b_ = a_ + int_direction;
        [i_, v_] = naive_mcm(fun, a_, b_, points_per_step);
        i += i_;
        v += v_;
    end
end

%!test
%! result = stratified_mcm(@exp, 0, 1, 1e2, 10);
%! assert(result, e - 1, 0.02);

%!test
%! result = stratified_mcm(@prod, [0 0], [1 1], 1e2, 4);
%! assert(result, 1/4, 0.05);

% Verify that the variance is inversely proportional to the strata count
%!test
%! [_, v1] = stratified_mcm(@exp, 0, 1, 1e2, 2);
%! [_, v2] = stratified_mcm(@exp, 0, 1, 1e2, 4);
%! assert(v1 > v2);
