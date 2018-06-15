function[x] = sobol_sequence(n, s)
    % -- sobol_sequence (N, S)
    %     Construct the s-dimensional Sobol sequence by using the number
    %     of the dimension as the degree of the corresponding primitive
    %     polynomial.
    x = zeros(n, s);

    for i = 1:n
        for j = 1:s
            x(i, j) = sobol_point(i, j);
        end
    end
end

%!test
%! sequence = sobol_sequence(100, 1);
%! assert(is_uniform(sequence, 1e-3));
