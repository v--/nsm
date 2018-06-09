function[x] = van_der_corput_sequence(n, base)
    expansion = power_expansion(1:n, base)';
    x = (1 / base) .^ (1:size(expansion, 1)) * expansion;
end

%!test
%! sequence = van_der_corput_sequence(15, 2);
%! expected = [
%!   1/2, [1 3] / 4, [1 5 3 7] / 8, [1 9 5 13 3 11 7 15] / 16
%! ];
%! assert(sequence, expected);

%!test
%! sequence = van_der_corput_sequence(100, 2);
%! assert(is_uniform(sequence, 1e-3));
