function[x] = hammersley_point_set(n, s)
    x = zeros(n, s);
    p = 1;

    x(:, 1) = (1:n) ./ n;

    for i = 2:s
        p = next_prime(p);
        expansion = power_expansion(1:n, p);
        m = size(expansion, 2);
        x(:, i) = expansion * (1 / p) .^ (1:m)';
    end
end

%!test
%! sequence = hammersley_point_set(10, 1);
%! expected = [0.1:0.1:1]';
%! assert(sequence, expected, 1e-3);

%!test
%! sequence = hammersley_point_set(100, 1);
%! assert(is_uniform(sequence, 1e-3));
