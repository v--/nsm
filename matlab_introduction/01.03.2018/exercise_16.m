% Define the following matrices
%     /  3    0   -1    0    0    0  \
%     |  0    3    0   -1    0    0  |
% D = | -1    0    3    0   -1    0  |
%     |  0   -1    0    3    0   -1  |
%     |  0    0   -1    0    3    0  |
%     \  0    0    0   -1    0    3  /
%
%     /  2   -1    1  \
% A = |  1    0    1  |
%     \  3   -1    4  /
%
%     /  1    2    1  \
% B = |  2    1    2  |
%     \  2    2    1  /
%
% and compute:
% 1) [A^(-1)]^(-1).
% 2) The inverse of AB. Compare it to the inverse of the element-wise product of A and B.
%    and to the product of the inverses of A and B.
% 3) The transpose of the determinant of A.
% 4) The determinant of AB. Compare it to the product of the determinants of A and B.
% 5) The determinant of the inverse of A. Compare it to the reciprocal of the determinant of A.

%!test
%! A = [2 -1 1; 1 0 1; 3 -1 4];
%! B = [1 2 1; 2 1 2; 2 2 1];
%!
%! M1 = inv(inv(A));
%! assert(M1, A, 1e-10);
%!
%! M2 = inv(A * B);
%! assert(
%!   any(M2 != inv(A .* B))
%! );
%! assert(
%!   any(M2 != inv(A) * inv(B))
%! );
%!
%! M3 = transpose(inv(A));
%!
%! M4 = det(A * B);
%! assert(
%!   M4,
%!   det(A) * det(B),
%!   1e-10
%! );
%!
%! M5 = det(inv(A));
%! assert(
%!   M5,
%!   1 / det(A),
%!   1e-10
%! );
