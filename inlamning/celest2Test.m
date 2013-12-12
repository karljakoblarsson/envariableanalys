clear all
clf

int = [0 20];
ua = [0 0 0 10 0 0 1 0];
n = 1e4;

hold on

% subplot(1, 3, 3)
[t, U] = ode45(@celest2, int, ua);
plot(U(:,1), U(:,2), 'r p', U(:,3), U(:,4), 'g')

hold off
