function[m, v] = stratified_mcm(fun, a, b, n, k)
    % -- [M, V] = stratified_mcm (FUN, A, B, N, K)
    %     Use stratification to improve the convergence of Monte Carlo integration.
    %
    %     FUN is the integrand, A and B are the bounding vectors, N is the number
    %     of iterations and K >= 2 is the number of subinterval each dimension
    %     gets subdivided into.
    %
    %     M is the approximate value of the integral and V is the estimated
    %     variance of the underlying random variable.
    dim = length(a);
    m = 0;
    v = 0;

    subdivisions = k^dim;

    if mod(n, subdivisions) > 0
        error('The total number of subdivisions (K^DIM, where DIM is the dimension of A) must divide N.')
    end

    points_per_step = n / subdivisions;
    directions = power_expansion(0:subdivisions - 1, k);
    int_direction = (b - a) ./ k;

    for i = 1:subdivisions
        a_ = a + directions(i, :) .* int_direction;
        b_ = a_ + int_direction;
        [m_, v_] = naive_mcm(fun, a_, b_, points_per_step);
        m += m_;
        v += v_;
    end
end

%!test
%! result = stratified_mcm(@exp, 0, 1, 1e2, 10);
%! assert(result, e - 1, 0.02);

%!test
%! result = stratified_mcm(@prod, [0 0], [1 1], 1e2, 2);
%! assert(result, 1/4, 0.05);

% Verify that the variance is inversely proportional to the strata count
%!test
%! [_, v1] = stratified_mcm(@exp, 0, 1, 1e2, 2);
%! [_, v2] = stratified_mcm(@exp, 0, 1, 1e2, 4);
%! assert(v1 > v2);
