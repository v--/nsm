% Construct a 1x6 matrix of ones.

M = ones(1, 6);

%!test
%! source matlab_introduction/01.03.2018/exercise_2.m;
%!
%! assert(
%!   M,
%!   [1 1 1 1 1 1]
%! );
