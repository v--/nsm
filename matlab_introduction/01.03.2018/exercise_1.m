% Construct the matrix
%
%     /  1   8   3  \
% A = |  3  10   7  |,
%     \  5   6   9  /
%
% extract the "9" and then extract the first column.

A = [1 8 3; 3 10 7; 5 6 9];

x = A(3, 3);

%!test
%! source matlab_introduction/01.03.2018/exercise_1.m;
%! assert(x, 9);

first_col = A(:, 1);

%!test
%! source matlab_introduction/01.03.2018/exercise_1.m;
%!
%! assert(
%!   first_col,
%!   [1; 3; 5]
%! );
