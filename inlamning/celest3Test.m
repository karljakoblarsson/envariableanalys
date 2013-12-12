%%% Test for celest3.m

beg = [0 0  100 0  95 0  0 0  0 100  0 97];

[t U] = mpEulSyst(@celest3, [0 7], beg, 1e4);
%[t U] = FEsyst(@celest3, [0 7], beg, 5e4);
%[t U] = backwardEulerSyst(@celest3, [0 7], beg, 1e4);
%[t U] = ode45(@celest3, [0 7], beg);

plot(U(:,1), U(:,2), 'm+', U(:,3), U(:,4), 'g', U(:,5), U(:,6), 'r');
