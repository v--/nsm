% Use the diag function to construct the matrix
%     /  1   -1    3  \
% B = |  0    5    2  |.
%     \  0    0   -4  /

B = diag([1 5 -4]) + diag([-1, 2], 1) + diag(3, 2);

%!test
%! source matlab_introduction/01.03.2018/exercise_16.m;
%!
%! assert(
%!   B,
%!   [
%!     1 -1  3;
%!     0  5  2;
%!     0  0 -4;
%!   ]
%! );
