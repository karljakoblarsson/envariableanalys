%% Fixedpoint-solver for vector-valued functions.

function x = fixedpointVec(fn, x, tol)
    diff = 100; % Dummy value to make sure the ite. begins.
    while diff >= tol
        old = x;
        x = fn(x);
        diff = norm(x - old);
    end
end
