% Find the mean, median and standard deviation of x = 1000 iid No(100, 5) random variables.

x = 100 + 5 * randn(1000, 1);

x_mean = mean(x);

%!test
%! source 29.03.2018/exercise_2.m;
%!
%! assert(
%!   x_mean,
%!   100,
%!   0.5
%! )

x_median = median(x);

%!test
%! source 29.03.2018/exercise_2.m;
%!
%! assert(
%!   x_median,
%!   100,
%!   1
%! )

x_sd = std(x);

%!test
%! source 29.03.2018/exercise_2.m;
%!
%! assert(
%!   x_sd,
%!   5,
%!   0.5
%! )
