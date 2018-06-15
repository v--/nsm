function[next] = linear_congruential_generator(current, a, b, m)
    % -- linear_congruential_generator (CURRENT, A, B, M)
    %     Given integers A, B and M, produce an integer modulo M from CURRENT.
    %     This generator actually produces integers, but luckily the integers
    %     are bounded and can easily be fit into the unit interval.
    next = mod(a + b * current, m);
end

%!test
%! seed = 13;
%!
%! curried_generator = @(x) linear_congruential_generator(x, m_primes(4), m_primes(5), m_primes(6));
%! sample = generate_sample(curried_generator, 1000, seed) ./ m_primes(6);
%! assert(is_uniform(sample, 0.01));
