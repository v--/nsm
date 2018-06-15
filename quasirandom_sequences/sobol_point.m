function[x] = sobol_point(n, d)
    % -- X = sobol_point (N, D)
    % Construct a single point of a Sobol-like sequence by using the binary
    % expansion of N and a primitive polynomial of degree D over GF(2).

    expansion = power_expansion(n, 2);
    w = length(expansion);
    % a is the vector of the non-leading coefficients
    a = gf2_primitive_polynomial(d);
    m = zeros(1, w);

    for i = 1:min(d, w)
        m(i) = 2^i - 1; % These initialization values are empirically proven to be nice
    end

    for i = (d+1):w
        j = 1:d;
        m(i) = bitxor(m(i-d), bitxor_sum(2.^j .* m(i-j) .* a(j)));
    end

    % Instead of deviding m by 2^i and then XOR-ing, we assign v_i = 2^(w-i) * m_i,
    % then we XOR v with the binary expansion of n and in the end we divide everything by 2^w
    v = m .* 2.^(w-1:-1:0);
    x = bitxor_sum(v .* expansion) / 2^w;
end

%!test
%! assert(sobol_point(1, 3), 0.5);
%! assert(sobol_point(2, 3), 0.75);
%! assert(sobol_point(3, 3), 0.25);
%! assert(sobol_point(4, 3), 0.875);
