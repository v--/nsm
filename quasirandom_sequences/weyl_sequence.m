function[seq] = weyl_sequence(n, p)
    % -- weyl_sequence (N, P)
    %     Construct the a one-dimensional Weyl sequence by utilizing the fact
    %     that the numbers 1/n_k, where n_k are prime, are linearly independent
    %     as rational numbers.
    x = zeros(1, n);
    x(1) = 1;

    for k = 2:n
        x(k) = next_prime(x(k - 1));
    end

    seq = mod(p ./ x, 1);
end

%!test
%! sequence = weyl_sequence(100, m_primes(6));
%! assert(is_uniform(sequence, 1e-3));
