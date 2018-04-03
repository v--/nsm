% Solve the system Ax = b, where
%
%     /  4   -2   -10  \
% A = |  2   10   -12  |
%     \ -4   -6    16  /
%
% b = (-10 32 -16)^T
%
% and use another method to solve the system Cx = d, where
%
%     /  1   1  -1  \
% C = |  2   1   1  |
%     \  1   0   3  /
%
% d = (0 1 -1)^T.

A = [4 -2 -10; 2 10 -12; -4 -6 16];
b = [-10; 32; -16];
x = A \ b;

%!test
%! source 01.03.2018/exercise_21.m;
%!
%! assert(
%!   x,
%!   [2; 4; 1],
%!   1e-10
%! )

C = [1 1 -1; 2 1 1; 1 0 3];
d = [0; 1; 1];
y = inv(C) * d;

%!test
%! source 01.03.2018/exercise_21.m;
%!
%! assert(
%!   y,
%!   [1; -1; 0],
%!   1e-10
%! )
