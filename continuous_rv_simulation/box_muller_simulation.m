function[sample] = box_muller_simulation(n)
    % -- box_muller_simulation (N)
    %     Simulate N random variates from a standard normal distribution.
    %     This is an efficient classical algorithm.
    sample = zeros(n, 1);

    for i = 1:2:n
        s = 2;

        while s > 1
            v = 2 * rand(2, 1) - 1;
            s = norm(v);
        end

        t = sqrt(-4*log(s)) / s;
        sample(i:min(i+1, n)) = (t * v)(min(2,n-i));
    end
end

%!test
%! sample = box_muller_simulation(100);
%! assert(is_uniform(normcdf(sample), 1e-3));
