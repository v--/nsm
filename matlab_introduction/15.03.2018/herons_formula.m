function[s] = herons_formula(a, b, c)
    if !(a > 0 & b > 0 & c > 0)
        error 'The sides of a triangle must be positive'
    end

    p = (a + b + c) / 2;
    s = sqrt(p * (p - a) * (p - b) * (p - c));
end

%!test
%! assert(herons_formula(3, 4, 5), 6);
%! assert(herons_formula(6, 8, 10), 24);
%! assert_throws(@herons_formula, -3, 4, 5);
