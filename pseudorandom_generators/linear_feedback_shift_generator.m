function[next] = linear_feedback_shift_generator(current, w)
    % -- linear_feedback_shift_generator (CURRENT, W)
    %     Produce a new pseudorandom number from the dot product of the CURRENT
    %     seed (usually the previous N generated numbers) and some vector W.
    %
    %     Performance-wise, this is an insanely efficient generator.
    next = mod(dot(current, w), 1);
end

%!test
%! seed = [0.9132 0.1323 0.5326];
%!
%! curried_generator = @(x) linear_feedback_shift_generator(x, m_primes(4:6));
%! sample = generate_sample(curried_generator, 1000, seed);
%! assert(is_uniform(sample, 0.01));
