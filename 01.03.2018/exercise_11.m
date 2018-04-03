% Find the largest element in the first row of A from exercise 1.

source 01.03.2018/exercise_1.m;

x = max(A(1, :));

%!test
%! source 01.03.2018/exercise_11.m;
%! assert(x, 8);
