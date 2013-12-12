%%% Tests for my own diff. eq. solvers.
%

N = 1e4;
I = [0 30];
beg = [0 1];

hold on

[t U] = FEsyst(@ode2solve, I, beg, N);
plot(t, U, 'r');

[t U] = backwardEulerSyst(@ode2solve, I, beg, N);
plot(t, U, 'g');

[t U] = mpEulSyst(@ode2solve, I, beg, N);
plot(t, U, 'b');

hold off
