function[d] = power_expansion(n, base)
    dim = length(n);
    slots = floor(log(max(n)) / log(base)) + 1;
    d = zeros(dim, slots);

    for i = 1:slots
        d(:, i) = mod(n, base);
        n = idivide(n, base);
    end
end
