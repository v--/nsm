% Find the smallest element in the second column of A from exercise 1.

source matlab_introduction/01.03.2018/exercise_1.m;

x = min(A(:, 2));

%!test
%! source matlab_introduction/01.03.2018/exercise_10.m;
%! assert(x, 6);