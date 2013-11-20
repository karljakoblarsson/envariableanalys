%%% Integral solver using Simpsons method.

%%% Karl Jakob Larsson 2013
%%% MIT License
%%% k.jakob.larsson@gmail.com

function y = simpson(fn, I, N)
    l = riemann(fn, I(1), I(2), N, 'l');
    m = riemann(fn, I(1), I(2), N, 'm');
    r = riemann(fn, I(1), I(2), N, 'r');

    y = (1/6)* (l + 4*m + r);

end
