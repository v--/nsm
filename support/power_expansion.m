function[d] = power_expansion(n, base)
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
