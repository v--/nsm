% Find the largest element in the first row of A from exercise 1.

source matlab_introduction/01.03.2018/exercise_1.m;

x = max(A(1, :));

%!test
%! source matlab_introduction/01.03.2018/exercise_11.m;
%! assert(x, 8);
