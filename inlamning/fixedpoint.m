function ans = fixedpoint(fn, x0, tol)
    if dist(fn(x0), x0) <= tol
        ans = fn(x0);
        return
    else
        ans = fixedpoint(fn, fn(x0), tol);
    end
end

function ans = dist(a,b)
    ans = abs(a-b);
end
