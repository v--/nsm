% Construct a square matrix of ones of order 4.

M = ones(4);

%!test
%! source matlab_introduction/01.03.2018/exercise_3.m;
%!
%! assert(
%!   M,
%!   [
%!     1 1 1 1;
%!     1 1 1 1;
%!     1 1 1 1;
%!     1 1 1 1;
%!   ]
%! );
