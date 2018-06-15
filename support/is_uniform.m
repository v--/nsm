function[result] = is_uniform(sample, significance_level)
    % -- is_uniform (SAMPLE, SIGNIFICANCE_LEVEL)
    %     Return the logical value of whether SAMPLE is uniformly distributed
    %     in [0, 1] with the given SIGNIFICANCE_LEVEL. A chi-squared homogeneity
    %     test with N/20 buckets is used.
    n = length(sample);
    bin_count = max(idivide(n, 20), 1); % There is nothing special about this value
    bins = linspace(0, 1, bin_count);
    expected_mean = n / bin_count;
    bin_values = histc(sample, bins);
    statistic = sum((bin_values - expected_mean) .^ 2) / expected_mean;
    result = statistic < chi2inv(significance_level, n - 1);
end
