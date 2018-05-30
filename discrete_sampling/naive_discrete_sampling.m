function[sample] = naive_discrete_sampling(n, prob_sequence)
    sample = zeros(n, 1);
    index = 1;

    while index <= n
        u = rand(1);
        m = 1;
        y = prob_sequence(m);

        while u > y
            m += 1;
            y += prob_sequence(m);
        end

        sample(index) = m;
        index += 1;
    end
end

%!test
%! % Binomial distribution
%! n = 4;
%! p = 1/2;
%! sample = naive_discrete_sampling(100, @(m) binopdf(m - 1, n, p)) - 1;
%! assert(is_uniform(binocdf(sample, n, p), 1e-3));
