% This generator also produces integers.

function[next] = additive_fibonacci_generator(current, k)
    next = mod(sum(current), 2^k);
end

%!test
%! seed = [13 17];
%!
%! curried_generator = @(x) additive_fibonacci_generator(x, 11);
%! sample = generate_sample(curried_generator, 1000, seed) ./ 2^11;
%! assert(is_uniform(sample, 0.01));
