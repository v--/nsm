function[x] = halton_sequence(n, s)
    p = 1;
    x = [];

    for i = 1:s
        p = next_prime(p);
        x = [x; van_der_corput_sequence(n, p)];
    end
end

%!test
%! assert(
%!   [van_der_corput_sequence(3, 2); van_der_corput_sequence(3, 3)],
%!   halton_sequence(3, 2)
%! );
