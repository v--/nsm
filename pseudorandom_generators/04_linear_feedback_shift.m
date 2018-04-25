% Constants
function[v] = w() v = [127, 8191, 131071]; end % The fourth, fifth and sixth Mersenne primes

% Functions
function[next] = linear_feedback_shift_generator(current)
    next = mod(current' * w, 1);
end

%!test
%! source pseudorandom_generators/04_linear_feedback_shift.m;
%! source support/generate_sample.m;
%! source support/is_uniform.m;
%!
%! seed = [0.9132, 0.1323, 0.5326];
%! sample = generate_sample(@linear_feedback_shift_generator, 1000, seed);
%! assert(is_uniform(sample, 0.01));
