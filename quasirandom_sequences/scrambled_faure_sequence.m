function[x] = scrambled_faure_sequence(n, s)
    % -- scrambled_faure_sequence (N, S)
    %     Use the generalized Faure sequence with a lower triangular matrix
    %     of random integers, i.e. multiply Pascal's matrix in the classical
    %     Faure sequence with a lower triangular m×m matrix containing random
    %     integers from 1 to m.
    %
    %     The random matrix is different for each point of the resulting sequence.
    x = zeros(n, s);
    base = next_prime(2*s);

    for i = 1:n
        expansion = power_expansion(i, base);
        m = size(expansion, 2);
        inverse_powers = (1 / base) .^ (1:m);

        for j = 1:s
            aux = tril(randi(m, m));
            x(i, j) = dot(inverse_powers, mod(expansion * aux * pascal(m)^(j-1), base));
        end
    end
end

%!test
%! sequence = scrambled_faure_sequence(100, 1);
%! assert(is_uniform(sequence, 1e-3));
