% This is a modification of the 'choice_without_return' algorithm that only samples a subset of all possible values and sacrifices some uniformity.
function[sample] = modified_choice_without_return_sampling(n, max_value)
    B = zeros(1, n);
    sample = zeros(1, n);

    for i = 1:n
        q = floor(rand(1) * (max_value - i + 1)) + 1;

        for j = 1:i
            if B(j) == q
                B(j) = 0;
                sample(i) = max_value - i + j + 1;
                break
            end
        end

        if sample(i) == 0
            sample(i) = q;
        end

        B(i) = q;
    end
end

%!test
%! n = 100;
%! N = n * 10;
%! sample = modified_choice_without_return_sampling(n, N);
%! assert(is_uniform(sample / N, 1e-3));
