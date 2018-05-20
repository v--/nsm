% Use a chi-squared test to verify that a sample is uniformly distributed in [0, 1]
function[result] = is_uniform(sample, significance_level, bins)
    n = length(sample);

    if exist('bins', 'var')
        bin_count = length(bins);
    else
        bin_count = max(idivide(n, 20), 1); % There is nothing special about this value
        bins = linspace(0, 1, bin_count);
    end

    expected_mean = n / bin_count;
    bin_values = histc(sample, bins);
    statistic = sum((bin_values - expected_mean) .^ 2) / expected_mean;
    result = statistic < chi2inv(significance_level, length(sample)-1);
end
