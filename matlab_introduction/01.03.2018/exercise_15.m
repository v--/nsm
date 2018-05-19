% Construct the matrix
%     /  3    0   -1    0    0    0  \
%     |  0    3    0   -1    0    0  |
% D = | -1    0    3    0   -1    0  |
%     |  0   -1    0    3    0   -1  |
%     |  0    0   -1    0    3    0  |
%     \  0    0    0   -1    0    3  /
%
% transpose it and find it's inverse.

%!test
%! D = 3 * eye(6) + diag(-ones(1, 4), -2) + diag(-ones(1, 4), 2);
%!
%! assert(
%!   D,
%!   [
%!     3  0 -1  0  0  0;
%!     0  3  0 -1  0  0;
%!    -1  0  3  0 -1  0;
%!     0 -1  0  3  0 -1;
%!     0  0 -1  0  3  0;
%!     0  0  0 -1  0  3;
%!   ]
%! );
%!
%! % Note: We use that D is symmetric. Another options for transposing is the 'transpose' function.
%! assert(D', D);
%!
%! invD = inv(D);
