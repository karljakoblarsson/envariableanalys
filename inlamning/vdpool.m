function dydt = vdpool(t, y)
    dydt = [y(2); 1000 * (1 - y(1)^2) * y(2) - y(1)];
end
