function[result] = naive_mcm(fun, a, b, n)
    % -- naive_mcm (FUN, A, B, N)
    %     Integrate FUN in the parallelotope generated by the diagonal [A, B]
    %     using N iterations by evaluating FUN at a random point in the
    %     parallelotope at each iteration.
    dim = length(a);
    dx = prod(b - a) / n;
    result = 0;

    for i = 1:n
        x = a + rand(1, dim) .* (b - a);
        result += fun(x) * dx;
    end
end

%!test
%! result = naive_mcm(@prod, zeros(1, 3), ones(1, 3), 1e3);
%! assert(result, 1/8, 1e-2);
