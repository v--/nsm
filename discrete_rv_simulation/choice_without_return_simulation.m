function[sample] = choice_without_return_simulation(n)
    % -- choice_without_return_simulation (N)
    %     Shuffle the numbers from 1 to N, i.e. produce N numbers from a uniform
    %     discrete distribution with value 1 to N.
    %
    %     Uniformity is guaranteed, even for small samples.
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
