function[d] = power_expansion(n, base)
    % -- power_expansion (N, BASE)
    %     Return a matrix where the i-th row corresponds to the BASE expansion
    %     of N(i).
    if base <= 1
        error('The base must be a positive number strictly greater than 1.')
    end

    dim = length(n);
    slots = floor(log(max(n)) / log(base)) + 1;
    d = zeros(dim, slots);

    for i = 1:slots
        d(:, i) = mod(n, base);
        n = idivide(n, base);
    end
end

%!test
%! assert(
%!     power_expansion(8, 2),
%!     [0 0 0 1]
%! );

%!test
%! assert(
%!     power_expansion([1 2 4 8], 2),
%!     eye(4)
%! );
