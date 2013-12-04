%% Differential equations solver based on Eulers backwards method.
%% Based on a function-shell provided by the professor.
%% Hence the ugly code :P

function [t,U]= backwardEuler(f,I,U0,N)

    % The last argument is optional
    NrIn = nargin;
    if NrIn==4
    elseif NrIn==3
        N=100;
    else
        error('Wrong number of input arguments!');
    end

    %%% This is the same as the simpler version. Not as the provided shell.
    U=zeros(1,N+1); % Iteration is faster with a pre-alcolated array.

    k = abs(I(2) - I(1)) / N; %steglängden.
    t = I(1):k:I(2); %Vektor med alla t_n

    U(1)=U0;

    % Tolerance in the fixedpoint-ite.
    tol = k^2;

    %%% The iteration
    for j=2:length(t)
        g = @(x) U(j-1) + k * f(t(j), x);
        % Use the previous value as the guess
        U(j) = fixedpoint2(g, U(j-1), tol);
    end

    % Transpose to columnvector to match ode45's output.
    U = U';
    t = t';

    % Tests:
    %
    % [t U] = minPrimBak(@(x) cos(2*x), [0 2*pi], 0, 100);
    % [tt UU] = ode45(@(hej, x) [cos(2*x)], [0 2*pi], [0 0]);
    % then plot 'em togehter with the analytical solution
    % cos(x)*sin(x)
    %
