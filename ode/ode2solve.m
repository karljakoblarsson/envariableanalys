function Uprim = ode2solve(t, U)
    c = 1;

    Uprim(1,1) = U(2);
    Uprim(2,1) = -c.^2 * U(1);
end
