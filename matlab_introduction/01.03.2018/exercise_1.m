% Construct the matrix
%
%     /  1   8   3  \
% A = |  3  10   7  |
%     \  5   6   9  /
%
% and then
%
% 1) Extract the "9".
% 2) Extract the first column.
% 3) Construct a matrix by adding 1 to each element of A.
% 4) Find the smallest element in the second column of A.
% 5) Find the largest element in the first row of A.

%!test
%! A = [1 8 3; 3 10 7; 5 6 9];
%! x = A(3, 3);
%! assert(x, 9);
%!
%! first_col = A(:, 1);
%! assert(
%!   first_col,
%!   [1; 3; 5]
%! );
%!
%! B = A + ones(3);
%! assert(
%!   B,
%!   [
%!     2   9   4;
%!     4  11   8;
%!     6   7  10;
%!   ]
%! );
%!
%! x = min(A(:, 2));
%! assert(x, 6);
%!
%! y = max(A(1, :));
%! assert(y, 8);
