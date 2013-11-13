function [t u] = myFE(fn, I, u0, N)
    detlaT = (I(2) - I(1)) / N;

    t= I(1):deltaT:I(0);
    u(1) = u0;

    for i = 2:N+1
        u(i) = u(n-1) + deltaT * fn(t(n-1), u(n-1);
    end

end
