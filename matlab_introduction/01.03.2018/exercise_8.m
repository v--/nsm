% Construct a vector with all multiples of 0.2 between and including 0 and 1.


%!test
%! x = 0:0.2:1;
%!
%! assert(
%!   0:0.2:1,
%!   [0.0, 0.2, 0.4, 0.6, 0.8, 1.0],
%!   1e-10
%! );
