function[next] = additive_fibonacci_generator(current, k)
    % -- additive_fibonacci_generator (CURRENT, K)
    %     Produce a new pseudorandom integer from the sum of the CURRENT
    %     seed (usually the previous N generated numbers) modulo 2^k.
    %
    %     This generator is efficient performance-wise, but it is relatively
    %     predictable.
    next = mod(sum(current), 2^k);
end

%!test
%! seed = [13 17];
%!
%! curried_generator = @(x) additive_fibonacci_generator(x, 11);
%! sample = generate_sample(curried_generator, 1000, seed) ./ 2^11;
%! assert(is_uniform(sample, 0.01));
