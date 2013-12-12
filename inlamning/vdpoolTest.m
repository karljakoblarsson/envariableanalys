f=@vdpool;
T0=0;
T=3000;
u0=[2;0];
[t,U]=ode15s(f,[T0 T],u0);
plot(t,U(:,1));
figure(gcf);
pause(5);
T=1000;
tic
[t15s,U15s]=ode15s(f,[T0 T],u0);
toc
tic
[t45,U45]=ode45(f,[T0 T],u0);
toc
disp('Vektorn t15s har');
disp(length(t15s));
disp('element.');
disp('Vektorn t45 har');
disp(length(t45));
disp('element.');
plot(t45,U45(:,1),'r:o',t15s,U15s(:,1),'ko');
legend('?','?');
title('?');
figure(gcf)

