%%% Test for celest3.m

beg = [0 0  100 0  95 0  0 0  0 100  0 97];

hold on

[t U] = mpEulSyst(@celest3, [0 7], beg, 1e4);
plot(U(:,1), U(:,2), 'm+', U(:,3), U(:,4), 'g', U(:,5), U(:,6), 'r');

[t U] = ode45(@celest3, [0 7], beg);
plot(U(:,1), U(:,2), 'm+', U(:,3), U(:,4), 'g-.', U(:,5), U(:,6), 'r-.');

hold off
