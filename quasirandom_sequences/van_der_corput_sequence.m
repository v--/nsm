function[x] = van_der_corput_sequence(n, b)
    iters = floor(log(n) / log(b)) + 1;
    dividends = 1:n;
    A = [];

    for i = 1:iters
        remainders = rem(dividends, b);
        dividends = (dividends - remainders) / b;
        A = [A; remainders];
    end

    x = (1 / b) .^ (1:iters) * A;
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
