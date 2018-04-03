% Construct a square matrix of zeros of order 3.

M = zeros(3);

%!test
%! source 01.03.2018/exercise_5.m;
%!
%! assert(
%!   M,
%!   [
%!     0 0 0;
%!     0 0 0;
%!     0 0 0;
%!   ]
%! );
