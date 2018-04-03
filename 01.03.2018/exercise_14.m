% Construct the matrix
%     /  11   12   13   14  \
% C = |  21   22   23   24  |.
%     |  31   32   33   34  |
%     \  41   42   43   44  /
%
% Extract the main diagonal, the vector [13; 24] and the number 41 from C

C = [11:14; 21:24; 31:34; 41:44];

%!test
%! source 01.03.2018/exercise_14.m;
%!
%! assert(
%!   C,
%!   [
%!     11 12 13 14;
%!     21 22 23 24;
%!     31 32 33 34;
%!     41 42 43 44;
%!   ]
%! );

d = diag(C);

%!test
%! source 01.03.2018/exercise_14.m;
%!
%! assert(
%!   d,
%!   [11; 22; 33; 44]
%! );

x = diag(C, 2);

%!test
%! source 01.03.2018/exercise_14.m;
%!
%! assert(
%!   x,
%!   [13; 24]
%! );

y = diag(C, -3);

%!test
%! source 01.03.2018/exercise_14.m;
%!
%! assert(
%!   y,
%!   41
%! );

