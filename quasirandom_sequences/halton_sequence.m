function[x] = halton_sequence(n, s)
    x = zeros(n, s);
    p = 1;

    for i = 1:s
        p = next_prime(p);
        expansion = power_expansion(1:n, p);
        m = size(expansion, 2);
        x(:, i) = expansion * (1 / p) .^ (1:m)';
    end
end

%!test
%! sequence = halton_sequence(15, 1);
%! expected = [
%!   1/2, [1 3] / 4, [1 5 3 7] / 8, [1 9 5 13 3 11 7 15] / 16
%! ]';
%! assert(sequence, expected);

%!test
%! sequence = halton_sequence(100, 1);
%! assert(is_uniform(sequence, 1e-3));
