function[] = assert_throws(f, varargin)
    err = false;

    try
        f(varargin{:});
    catch e
        err = e;
    end

    if err
        error 'assertion failed: no error was thrown';
    end
end
