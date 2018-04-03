% Construct a vector with all multiples of 0.2 between and including 0 and 1.

x = 0:0.2:1;

%!test
%! source 01.03.2018/exercise_8.m;
%!
%! assert(
%!   0:0.2:1,
%!   [0.0, 0.2, 0.4, 0.6, 0.8, 1.0],
%!   1e-10
%! );
