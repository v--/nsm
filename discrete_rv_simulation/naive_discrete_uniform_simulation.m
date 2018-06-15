function[sample] = naive_discrete_uniform_simulation(n)
    % -- naive_discrete_uniform_simulation (N)
    %     Generate a random n-sequence containing the numbers from 1 to n by
    %     simply rounding the output of a continuous pseudorandom generator.
    sample = round(rand(1, n) * n);
end

%!test
%! n = 100;
%! sample = naive_discrete_uniform_simulation(n);
%! assert(is_uniform(sample / n, 1e-3));
