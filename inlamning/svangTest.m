%%

I = [0 2*pi];
N = 1e2;
hold on

[t U] = ode45(@svang, I, [1 0]);
h = plot(t,U(:,1), 'r:', t, U(:,2), 'r:');

[t U] = FEsyst(@svang, I, [1 0], N);
h = plot(t,U(:,1), 'g', t, U(:,2), 'g');

[t U] = backwardEulerSyst(@svang, I, [1 0], N);
h = plot(t,U(:,1), 'b', t, U(:,2), 'b');

[t U] = mpEulSyst(@svang, I, [1 0], N);
h = plot(t,U(:,1), 'm-.', t, U(:,2), 'm-.');

% The analytical solutions for u and u's derivative.
fplot(@sin, I, 'r--');
fplot(@cos, I, 'r--');

hold off
