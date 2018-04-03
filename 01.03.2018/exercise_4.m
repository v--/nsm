% Construct a 2x3 matrix of ones.

M = zeros(2, 3);

%!test
%! source 01.03.2018/exercise_4.m;
%!
%! assert(
%!   M,
%!   [
%!     0 0 0;
%!     0 0 0;
%!   ]
%! );
