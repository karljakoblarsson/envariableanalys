function ans = fixedpointIte(fn, x0, tol)
    x = x0;
    while dist(fn(x), x) >= tol
        x = fn(x);
    end
    ans = x;
end

function ans = dist(a,b)
    ans = abs(a-b);
end
