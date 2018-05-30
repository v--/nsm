function[seq] = weyl_sequence(n, p)
    seq = mod(p ./ (1:n), 1);
end

%!test
%! sequence = weyl_sequence(10, 7);
%! assert(
%!   sequence,
%!   [0, 1/2, 1/3, 3/4, 2/5, 1/6, 0, 7/8, 7/9, 7/10],
%!   1e-3
%! );

%!test
%! sequence = weyl_sequence(100, m_primes(6));
%! assert(is_uniform(sequence, 1e-3));
