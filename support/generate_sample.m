function[sample] = generate_sample(prgn_next, n, seed)
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
