function[prime] = next_prime(start)
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
