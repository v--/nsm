% Some primitive polynomials over GF(2)
% Coefficients start from x^(n-1) since the leading coefficient is always 1
% Taken from http://www.partow.net/programming/polynomials/index.html
function[p] = gf2_primitive_polynomials(degree)
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
