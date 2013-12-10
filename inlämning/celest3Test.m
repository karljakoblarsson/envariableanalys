%%% Test for celest3.m

beg = [0 0  100 0  105 0  0 0  0 100  9 103];

[t U] = backwardEulerSyst(@celest3, [0 1], beg, 1000);

plot(U(:,1), U(:,2), 'm+', U(:,3), U(:,4), 'g', U(:,5), U(:,6), 'r');
