function[sample] = rejection_sampling(n, target_pdf, aux_pdf, aux_gen, aux_constant)
    sample = zeros(n, 1);
    index = 1;

    while index <= n
        y = aux_gen(1);
        u = rand(1);

        if u <= target_pdf(y) / (aux_constant * aux_pdf(y))
            sample(index) = y;
            index++;
        end
    end
end

%!test
%! % This works fine when simulating a Beta(2, 5) distribution using a standard uniform distribution
%! a = 2;
%! b = 5;
%! sample = rejection_sampling(100, @(x) betapdf(x, a, b), @unifpdf, @rand, 1);
%! assert(is_uniform(betacdf(sample, a, b), 1e-3));

%!test
%! % But not for a Exp(2) distribution
%! lambda = 2;
%! sample = rejection_sampling(100, @(x) exppdf(x, lambda), @unifpdf, @rand, 1);
%! assert(!is_uniform(expcdf(sample, lambda), 1e-3));

%!test
%! % Simulating normal random variables using the Cauchy distribution also seems worthwhile
%! sample = rejection_sampling(100, @normpdf, @cauchy_pdf, @(n) cauchy_rnd(0, 1, n), sqrt(pi/2));
%! assert(is_uniform(normcdf(sample), 1e-3));
