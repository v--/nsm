% This is the simplest working PRNG.
% It is similar to a multiplicative congruential generator, but it works with values in [0, 1) directly.

% Constants
function[v] = M() v = 131071; end % The sixth Mersenne prime

% Functions
function[next] = elementary_generator(current)
    next = mod(M * current, 1);
end

%!test
%! source pseudorandom_generators/01_elementary.m;
%! source support/generate_sample.m;
%! source support/is_uniform.m;
%!
%! seed = 0.9132;
%! sample = generate_sample(@elementary_generator, 1000, seed);
%! assert(is_uniform(sample, 0.01));
