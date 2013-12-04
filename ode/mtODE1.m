%% Differential equations solver based on Eulers forward method.
%% Based on a function-shell provided by the professor.
%% Hence the ugly code :P

function [t,U]=minPrim(f,I,U0,N)

%Vi b¨orjar testa antalet inargument och till˚ater anv¨andaren
%att inte bry sig om hur m˚anga delintervall det ska vara.
NrIn = nargin; %Returnerar antalet inargument som anv¨andaren angett.

if NrIn==4 %G¨or ingenting
elseif NrIn==3
    N=100;
else
    error('Wrong number of input arguments!');
end

U=zeros(1,N+1); %Programmet blir snabbare om vi skapar en
    %vektor som har r¨att storlek innan vi b¨orjar
    %loopa.

k = abs(I(2) - I(1)) / N; %stegl¨angden.
t = I(1):k:I(2); %Vektor med alla t_n

U(1)=U0;

for j=2:length(t)
    U(j) = U(j-1) + k * f(t(j-1));
end


% Tests:
%
% [t U] = minPrim(@(x) cos(2*x), [0 2*pi], 0, 100);
% [tt UU] = ode45(@(hej, x) [cos(2*x)], [0 2*pi], [0 0]);
% then plot 'em togehter with the analytical solution
% cos(x)*sin(x)
%
