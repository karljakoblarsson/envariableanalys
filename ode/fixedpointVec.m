function x = fixedpointVec(fn, x, tol)
    while abs(fn(x) - x) >= tol
        x = arrayfun(fn, x);
    end
end
