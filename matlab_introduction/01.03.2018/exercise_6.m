% Construct a unit matrix order 3.

M = eye(3);

%!test
%! source matlab_introduction/01.03.2018/exercise_6.m;
%!
%! assert(
%!   M,
%!   [
%!     1 0 0;
%!     0 1 0;
%!     0 0 1;
%!   ]
%! );
