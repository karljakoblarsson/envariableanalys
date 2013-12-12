%%% Test for celest33d.m

pSun   = [0   0   0];
pEarth = [100  0  0];
pMoon  = pEarth + [-7  0  7];

vSun   = [0  0  0];
vEarth = [0  1e2  90];

dSE = norm(pSun - pEarth);
vMoon  = vEarth + dSE/norm(dSE) * 4;
beg = [ pSun, pEarth, pMoon, vSun, vEarth, vMoon];

%[t U] = backwardEulerSyst(@celest33d, [0 1e4], beg, 1e4);
%[t U] = mpEulSyst(@celest33d, [0 75], beg, 1e4);
[t U] = ode45(@celest33d, [0 80], beg);

plot3(U(:,1), U(:,2), U(:,3),'m+', ...
      U(:,4), U(:,5), U(:,6),'g',  ...
      U(:,7), U(:,8), U(:,9),'r');

xlabel 'x';
ylabel 'y';
zlabel 'z';

