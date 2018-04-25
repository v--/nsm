% Use the triu and tril functions to construct the matrix
%     /  1    0    0   -1  \
% P = |  1    1    0    0  |.
%     |  1    1    1    0  |
%     \  1    1    1    1  /

P = tril(ones(4)) + triu(-ones(4), 3);

%!test
%! source matlab_introduction/01.03.2018/exercise_17.m;
%!
%! assert(
%!   P,
%!   [
%!     1  0  0 -1;
%!     1  1  0  0;
%!     1  1  1  0;
%!     1  1  1  1;
%!   ]
%! );
