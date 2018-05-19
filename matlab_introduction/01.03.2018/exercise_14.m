% Use the triu and tril functions to construct the matrix
%     /  1    0    0   -1  \
% P = |  1    1    0    0  |.
%     |  1    1    1    0  |
%     \  1    1    1    1  /

%!test
%! P = tril(ones(4)) + triu(-ones(4), 3);
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
