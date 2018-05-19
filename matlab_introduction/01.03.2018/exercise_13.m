% Use the diag function to construct the matrix
%     /  1   -1    3  \
% B = |  0    5    2  |.
%     \  0    0   -4  /

%!test
%! B = diag([1 5 -4]) + diag([-1, 2], 1) + diag(3, 2);
%!
%! assert(
%!   B,
%!   [
%!     1 -1  3;
%!     0  5  2;
%!     0  0 -4;
%!   ]
%! );
