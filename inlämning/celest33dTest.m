%%% Test for celest3.m

pSun   = [0   0   0  ];
pEarth = [1e2 0 0  ];
pMoon  = [95 0 5 ];
vSun   = [0   0   0  ];
vEarth = [0  1e2 90];
vMoon  = [0   90  100];
beg = [ pSun, pEarth, pMoon, vSun, vEarth, vMoon];

%[t U] = backwardEulerSyst(@celest33d, [0 1e4], beg, 1e4);
[t U] = ode45(@celest33d, [0 80], beg);
%[t U] = ode15s(@celest33d, [0 2], beg);

plot3(U(:,1), U(:,2), U(:,3),'m+', ...
      U(:,4), U(:,5), U(:,6),'g',  ...
      U(:,7), U(:,8), U(:,9),'y');

xlabel 'x';
ylabel 'y';
zlabel 'z';

