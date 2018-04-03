% Find the zeros of the real polynomial x^2 + x - 6.

x = roots([1, 1, -6]);

%!test
%! source 01.03.2018/exercise_20.m;
%!
%! assert(
%!   x,
%!   [-3; 2]
%! );

