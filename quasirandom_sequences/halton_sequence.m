function[x] = halton_sequence(n, s)
    x = zeros(n, s);
    p = 1;

    for i = 1:s
        p = next_prime(p);
        x(:, i) = van_der_corput_sequence(n, p);
    end
end

%!test
%! assert(
%!   halton_sequence(3, 2),
%!   [van_der_corput_sequence(3, 2)' van_der_corput_sequence(3, 3)']
%! );
