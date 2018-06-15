function[sample] = rejection_simulation(n, target_pdf, aux_pdf, aux_gen, aux_constant)
    % -- rejection_simulation (N, TARGET_PDF, AUX_PDF, AUX_GEN, AUX_CONSTANT)
    %     Simulate N random variates by first generating variates using AUX_GEN
    %     and then filtering out those generated variates that do not satisfy
    %     the theoretical PDF ratio (AUX_CONSTANT) between TARGET_PDF and AUX_PDF.
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

% This works fine when simulating a Beta(2, 5) distribution using a standard
% uniform distribution
%!test
%! a = 2;
%! b = 5;
%! sample = rejection_simulation(100, @(x) betapdf(x, a, b), @unifpdf, @rand, 1);
%! assert(is_uniform(betacdf(sample, a, b), 1e-3));

% But not for a Exp(2) distribution
%!test
%! lambda = 2;
%! sample = rejection_simulation(100, @(x) exppdf(x, lambda), @unifpdf, @rand, 1);
%! assert(!is_uniform(expcdf(sample, lambda), 1e-3));

% Simulating normal random variates using the Cauchy distribution also seems
% to be worthwhile
%!test
%! sample = rejection_simulation(100, @normpdf, @cauchy_pdf, @(n) cauchy_rnd(0, 1, n), sqrt(pi/2));
%! assert(is_uniform(normcdf(sample), 1e-3));
