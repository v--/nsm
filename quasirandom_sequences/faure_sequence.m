function[x] = faure_sequence(n, s)
    x = zeros(n, s);
    base = next_prime(2*s); % The choice of this prime is pretty much arbitrary

    for i = 1:n
        expansion = power_expansion(i, base);
        m = size(expansion, 2);
        inverse_powers = (1 / base) .^ (1:m);

        for j = 1:s
            x(i, j) = dot(inverse_powers, mod(expansion * pascal(m)^(j-1), base));
        end
    end
end

%!test
%! assert(faure_sequence(16, 1), halton_sequence(16, 2)(:, 2), 1e-3);

%!test
%! sequence = faure_sequence(100, 1);
%! assert(is_uniform(sequence, 1e-3));
