% The goal is to simulate a uniform discrete random variable.
% It basically shuffles the numbers in a certain interval so uniformity is guaranteed, even for small samples.
function[sample] = choice_without_return_simulation(n)
    A = 1:n;
    sample = zeros(1, n);

    for i = 1:n
        q = floor(rand(1) * (n-i+1)) + 1;
        sample(i) = A(q);
        A(q) = A(n-i+1);
    end
end

%!test
%! n = 60;
%! sample = choice_without_return_simulation(n);
%! assert(is_uniform(sample / n, 1e-3));
