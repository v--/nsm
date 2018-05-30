function[sample] = naive_discrete_uniform_simulation(n)
    sample = round(rand(1, n) * n);
end

%!test
%! n = 100;
%! sample = naive_discrete_uniform_simulation(n);
%! assert(is_uniform(sample / n, 1e-3));
