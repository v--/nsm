% This is another algorithm for simulating uniform discrete random variables.
% It avoids auxilary arrays at the cost of more calls to the underlying random generator.
function[sample] = choice_with_return_simulation(n, max_value)
    sample = zeros(1, n);

    for i = 1:n
        while true
            q = floor(rand(1) * (max_value - i + 1)) + 1;
            is_not_yet_sampled = true;

            for j = 1:i
                if sample(j) == q
                    is_not_yet_sampled = false;
                    break
                end
            end

            if is_not_yet_sampled
                break
            end
        end

        sample(i) = q;
    end
end

%!test
%! n = 100;
%! N = n * 10;
%! sample = choice_with_return_simulation(n, N);
%! assert(is_uniform(sample / N, 1e-3));
