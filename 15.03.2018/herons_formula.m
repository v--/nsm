% This is yet another exercise on Matlab itself, no stochastics here yet.
function[s] = heron(a, b, c)
    if !(a > 0 & b > 0 & c > 0)
        error 'The sides of a triangle must be positive'
    end

    p = (a + b + c) / 2;
    s = sqrt(p * (p - a) * (p - b) * (p - c));
end

%!test
%! source support/assert_throws.m;
%! source 15.03.2018/herons_formula.m;
%!
%! assert(heron(3, 4, 5), 6);
%! assert(heron(6, 8, 10), 24);
%! assert_throws(@heron, -3, 4, 5);
