function[next] = von_neumann_generator(current, k)
    % -- von_neumann_generator (CURRENT, K)
    %     Given CURRENT, output the next element of the von Neumann pseudorandom
    %     sequence. Each generated number has exactly K decimal places.
    next = 10^(-2*k) * round(10^(2*k) * mod(10^k * current^2, 1));
end

%!test
%! seed = 0.9132;
%!
%! curried_generator = @(x) naive_generator(x, 3);
%! sample = generate_sample(curried_generator, 1000, seed);
%! assert(is_uniform(sample, 0.01));
