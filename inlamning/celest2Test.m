%%

I = [0 20];
u0 = [0 0 0 10 0 0 1 0];
N = 1e3;

hold on

[t, U] = ode45(@celest2, I, u0);
plot(U(:,1), U(:,2), 'r p', U(:,3), U(:,4), 'r')

%[t, U] = FEsyst(@celest2, [0 5], u0, N);
%plot(U(:,1), U(:,2), 'g p', U(:,3), U(:,4), 'g')

%[t, U] = backwardEulerSyst(@celest2, I, u0, N);
%plot(U(:,1), U(:,2), 'b p', U(:,3), U(:,4), 'b')

[t, U] = mpEulSyst(@celest2, I, u0, N);
plot(U(:,1), U(:,2), 'm p', U(:,3), U(:,4), 'm')

hold off
