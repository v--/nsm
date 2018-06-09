% Reduce an entire vector with bitxor
function[result] = bitxor_sum(x)
    result = 0;

    for i = 1:length(x)
        result = bitxor(result, x(i));
    end
end
