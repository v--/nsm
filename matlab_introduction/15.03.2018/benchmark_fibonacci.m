source matlab_introduction/15.03.2018/fibonacci.m;

% Benchmark the basic Gaussian algorithm with and without pivoting
function[measurings] = benchmark_fibonacci(n)
    implementations = { @fib_scalar_matrices, @fib_scalar_iter, @fib_sequence_iter, @fib_sequence_rec };
    measurings = [];

    for i = 1:length(implementations)
        tic;
        implementations{i}(n);
        measurings(i) = toc;
        i += 1;
    end
end

%!test
%! source matlab_introduction/15.03.2018/benchmark_fibonacci.m;
%!
%! measurings = benchmark_fibonacci(100);
%! % Verify that each next algorithm is slower than the preceding one
%! assert(measurings(1:end - 1) < measurings(2:end))
