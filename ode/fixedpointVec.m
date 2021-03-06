function x = fixedpointVec(fn, x, tol)
    diff = 100;
    while diff >= tol
        old = x;
        x = fn(x);
        diff = max(abs(x - old));
    end
end
