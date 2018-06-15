function[next] = multiplicative_fibonacci_generator(current, k)
    % -- multiplicative_fibonacci_generator (CURRENT, K)
    %     Produce a new pseudorandom integer from the product of the CURRENT
    %     seed (usually the previous N generated numbers) modulo 2^k.
    %
    %     This generator is efficient performance-wise, but it is relatively
    %     predictable.
    next = mod(prod(current), 2^k);
end

%!test
%! seed = [13 17];
%!
%! curried_generator = @(x) multiplicative_fibonacci_generator(x, 11);
%! sample = generate_sample(curried_generator, 1000, seed) ./ 2^11;
%! assert(is_uniform(sample, 0.01));
