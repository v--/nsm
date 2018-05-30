function[sample] = naive_discrete_simulation(n, pdf, first_value, next_value)
    sample = zeros(n, 1);
    index = 1;

    while index <= n
        u = rand(1);
        m = first_value;
        y = pdf(m);

        while u > y
            m = next_value(m);
            y += pdf(m);
        end

        sample(index) = m;
        index += 1;
    end
end

%!test
%! % Binomial distribution
%! n = 4;
%! p = 1/2;
%! sample = naive_discrete_simulation(100, @(m) binopdf(m, n, p), 0, @(n) n+1);
%! assert(is_uniform(binocdf(sample, n, p), 1e-3));

%!test
%! % Poisson distribution
%! lambda = 2;
%! sample = naive_discrete_simulation(100, @(m) poisspdf(m, lambda), 0, @(n) n+1);
%! assert(is_uniform(poisscdf(sample, lambda), 1e-3));
