% Construct a matrix by adding 1 to each element of A from exercise 1.

source matlab_introduction/01.03.2018/exercise_1.m;

B = A + ones(3);

%!test
%! source matlab_introduction/01.03.2018/exercise_9.m;
%!
%! assert(
%!   B,
%!   [
%!     2   9   4;
%!     4  11   8;
%!     6   7  10;
%!   ]
%! );
