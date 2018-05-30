function[sample] = inverse_function_simulation(n, quantile_fun)
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
