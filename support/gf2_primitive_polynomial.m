function[p] = gf2_primitive_polynomial(degree)
    % -- gf2_primitive_polynomial (DEGREE)
    %     Return a primitive polynomials over GF(2) of degree DEGREE.
    %     The function always returns the same polynomial for a given degree.
    %     The coefficients start from x^(n-1) since the leading coefficient
    %     is always 1. The polynomials are taken from
    %     http://www.partow.net/programming/polynomials/index.html.
    p = {
        [1],
        [1 1],
        [0 1 1],
        [0 0 1 1],
        [0 0 1 0 1],
        [0 0 0 0 1 1],
        [0 0 0 0 0 1 1],
    }{degree};
end
