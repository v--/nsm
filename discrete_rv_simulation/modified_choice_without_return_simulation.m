function[sample] = modified_choice_without_return_simulation(n, max_value)
    % -- modified_choice_without_return_simulation (N, MAX_VALUE)
    %     Sample a subset of 1 to MAX_VALUE by sacrificing some of the uniformity
    %     of the original choice without return simulation.
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
%! sample = modified_choice_without_return_simulation(n, N);
%! assert(is_uniform(sample / N, 1e-3));
