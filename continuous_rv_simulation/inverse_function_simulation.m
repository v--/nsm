function[sample] = inverse_function_simulation(n, quantile_fun)
    % -- inverse_function_simulation (N, QUANTILE_FUN)
    %     Simulate N random variates using QUANTILE_FUN. Given that the quantile
    %     function is efficient, this is the simplest approach towards simulating
    %     a continuous (or even a discrete) random variates.
    for i = 1:n
        sample(i) = quantile_fun(rand(1));
    end
end

%!test
%! lambda = 2;
%! sample = inverse_function_simulation(100, @(n) expinv(n, lambda));
%! assert(is_uniform(expcdf(sample, lambda), 1e-3));

%!test
%! sample = inverse_function_simulation(100, @norminv);
%! assert(is_uniform(normcdf(sample), 1e-3));

%!test
%! n = 10;
%! p = 1/2;
%! sample = inverse_function_simulation(100, @(k) binoinv(k, n, p));
%! assert(is_uniform(binocdf(sample, n, p), 1e-3));
