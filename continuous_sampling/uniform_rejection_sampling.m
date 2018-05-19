% Use the uniform distribution with density g(y) = 1 to simulate another continuous distribution
function[sample] = uniform_rejection_sampling(n, density)
    sample = zeros(n, 1);
    index = 1;

    while index <= n
        y = rand(1);
        u = rand(1);

        if u <= density(y)
            sample(index) = y;
            index++;
        end
    end
end

%!test
%! % This works fine for a Beta(2, 5) distribution
%! a = 2;
%! b = 5;
%! sample = uniform_rejection_sampling(100, @(x) betapdf(x, a, b));
%! assert(is_uniform(betacdf(sample, a, b), 0.01));

%!test
%! % But not for a Exp(2) distribution
%! lambda = 2;
%! sample = uniform_rejection_sampling(100, @(x) exppdf(x, lambda));
%! assert(!is_uniform(expcdf(sample, lambda), 0.01));
