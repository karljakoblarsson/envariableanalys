function du = celest3_joel(t, u)
du = zeros(size(u)); % Minnesallokering
G = 100; % Gravitationskonstanten
m1 = 1e4; m2 = 1e1; m3 = 1e-1;
x1 = u(1:2); 
x2 = u(3:4); 
x3 = u(5:6); % Planeternas positioner
du(1:2) = u(7:8); 
du(3:4) = u(9:10); 
du(5:6) = u(11:12); % Planeternas hastigheter
r12 = norm(x1-x2)^3;
r13 = norm(x1-x3)^3;
r23 = norm(x2-x3)^3; % Avstånden mellan planeterna i kubik

du(7:8) = m2*(x2-x1)/r12 + m3*(x3-x1)/r13;
du(9:10) = m1*(x1-x2)/r12 + m3*(x3-x2)/r23;
du(11:12) = m1*(x1-x3)/r13 + m2*(x2-x3)/r23;
du(7:12) = G*du(7:12); % Planeternas accelerationer