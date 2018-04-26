% Use the uniform distribution with density g(y) = 1 to simulate a beta distribution with density f(y) = y^(a - 1) * (1 - y)^(b - 1) / beta(a, b)
function[sample] = beta_sample(n, a, b)
    sample = zeros(n, 1);
    index = 1;

    while index <= n
        y = rand(1);
        u = rand(1);

        if u <= y^(a - 1) * (1 - y)^(b - 1)
            sample(index) = y;
            index++;
        end
    end
end

%!test
%! source continuous_generators/01_rejection_sampling.m;
%! source support/is_uniform.m;
%!
%! a = 2;
%! b = 5;
%! sample = beta_sample(100, a, b);
%! assert(is_uniform(betacdf(sample, a, b), 0.01));
