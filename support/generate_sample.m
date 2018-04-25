function[sample] = generate_sample(prgn_next, n, seed)
    sample = [seed];

    while length(sample) < n
        i = length(sample);
        seed_index = i-length(seed)+1:i;
        generated = prgn_next(sample(seed_index));

        generated_index = 1:min(n-i, length(generated));
        assignment_index = i+1:min(i+length(generated),n);
        sample(assignment_index) = generated(generated_index);
    end
end
