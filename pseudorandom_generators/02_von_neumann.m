% Constants
function[v] = k() v = 3; end % The number of decimal places

function[next] = von_neumann_generator(current)
    next = 10^(-2*k) * round(10^(2*k) * mod(10^k * current^2, 1));
end

%!test
%! source pseudorandom_generators/02_von_neumann.m;
%! source support/generate_sample.m;
%! source support/is_uniform.m;
%!
%! seed = 0.9132;
%! sample = generate_sample(@von_neumann_generator, 1000, seed);
%! assert(is_uniform(sample, 0.01));
