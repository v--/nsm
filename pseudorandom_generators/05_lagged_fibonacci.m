% These generators also product integers.

% Constants
function[v] = k() v = 11; end

% Functions
function[next] = additive_fibonacci_generator(current)
    next = mod(sum(current), 2^k);
end

%!test
%! source pseudorandom_generators/05_lagged_fibonacci.m;
%! source support/generate_sample.m;
%! source support/is_uniform.m;
%!
%! seed = [13, 17];
%! sample = generate_sample(@additive_fibonacci_generator, 1000, seed) ./ 2^k;
%! assert(is_uniform(sample, 0.01));

% Functions
function[next] = multiplicative_fibonacci_generator(current)
    next = mod(sum(current), 2^k);
end

%!test
%! source pseudorandom_generators/05_lagged_fibonacci.m;
%! source support/generate_sample.m;
%! source support/is_uniform.m;
%!
%! seed = [13, 17];
%! sample = generate_sample(@multiplicative_fibonacci_generator, 1000, seed) ./ 2^k;
%! assert(is_uniform(sample, 0.01));
