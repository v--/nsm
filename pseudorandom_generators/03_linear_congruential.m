% This generator actually produces integers, but luckily the integers are bounded and can easily be fit into the unit interval.

% The forth, fifth and sixth Mersenne primes

% Constants
function[v] = a() v = 127; end
function[v] = b() v = 8191; end
function[v] = m() v = 131071; end

% Functions
function[next] = linear_congruential_generator(current)
    next = mod(a + b * current, m);
end

%!test
%! source pseudorandom_generators/03_linear_congruential.m;
%! source support/generate_sample.m;
%! source support/is_uniform.m;
%!
%! seed = 13;
%! sample = generate_sample(@linear_congruential_generator, 1000, seed) ./ m;
%! assert(is_uniform(sample, 0.01));
