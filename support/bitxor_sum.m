function[result] = bitxor_sum(x)
    % -- bitxor_sum (X)
    %     Reduce the vector X using bitxor.
    result = 0;

    for i = 1:length(x)
        result = bitxor(result, x(i));
    end
end
