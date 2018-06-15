function[x] = scrambled_faure_sequence(n, s)
    x = zeros(n, s);
    base = next_prime(2*s); % The choice of this prime is pretty much arbitrary

    for i = 1:n
        expansion = power_expansion(i, base);
        m = size(expansion, 2);
        inverse_powers = (1 / base) .^ (1:m);

        for j = 1:s
            aux = tril(rand(m));
            x(i, j) = mod(dot(inverse_powers, expansion * aux * pascal(m)^(j-1)), 1);
        end
    end
end

%!test
%! sequence = scrambled_faure_sequence(100, 1);
%! assert(is_uniform(sequence, 1e-3));
