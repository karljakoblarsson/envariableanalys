%%% Plot of a Butterfly curve.

X = sin(t) .* (exp(cos(t)) - 2 .* cos(4.*t) - sin(t./12).^5);
Y = cos(t) .* (exp(cos(t)) - 2 .* cos(4.*t) - sin(t./12).^5);
plot(X,Y);
t = 0:1e-3:10;
