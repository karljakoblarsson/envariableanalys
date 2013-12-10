function x = fixedpoint2(fn, x, tol)
    while abs(fn(x) - x) >= tol
        x = fn(x);
    end
end