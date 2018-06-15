function[sample] = generate_sample(prgn_next, n, seed)
    % -- generate_sample (PRGN_NEXT, N, SEED)
    %     Construct a sequence of N pseudorandom numbers starting with the SEED
    %     vector. PRGN_NEXT is first fed with the seed and then with it's last
    %     output until the sample has at least N numbers. If the resulting sample
    %     has more than N numbers, the remaining numbers are trimmed.
    sample = zeros(1, n);
    i = length(seed);
    sample(1:i) = seed;

    while i < n
        seed_index = i-length(seed)+1:i;
        generated = prgn_next(sample(seed_index));

        generated_index = 1:min(n-i, length(generated));
        assignment_index = i+1:min(i+length(generated),n);
        sample(assignment_index) = generated(generated_index);
        i += length(assignment_index);
    end
end
