function[prime] = next_prime(start)
    % -- next_prime (START)
    %     Find the smallest prime that is strictly larger than START.

    if start < 3
        prime = start + 1;
    else
        if rem(start, 2) == 0
            candidate = start + 1;
        else
            candidate = start + 2;
        end

        while ~isprime(candidate)
            candidate += 2;
        end

        prime = candidate;
    end
end
