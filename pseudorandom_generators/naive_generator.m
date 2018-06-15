function[next] = naive_generator(current, M)
    % -- naive_generator (CURRENT, M)
    %     Generate a new pseudorandom number given CURRENT. M is supposed to be
    %     a large prime. This is the simplest working PRNG. It is similar to a
    %     multiplicative congruential generator, but it works with values in
    %     [0, 1) directly.
    next = mod(M * current, 1);
end

%!test
%! seed = 0.9132;
%!
%! curried_generator = @(x) naive_generator(x, m_primes(6));
%! sample = generate_sample(curried_generator, 1000, seed);
%! assert(is_uniform(sample, 0.01));
