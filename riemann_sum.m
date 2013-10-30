function I = riemann_sum(fn, a, b, N)
    % Check the number of arguments.
    % N is optional and has a default value.
    if nargin == 3
        N = 100;
    elseif nargin ~= 4
        error('riemann_sum: Wrong number of arguments');
    end

    intervall_size = b - a;
    delta_x = intervall_size / N;

    X = 1:N;
    X = X .* delta_x;

    %X = a:delta_x:b-1e-10;

    %X = X - delta_x/2;
    %X = X - delta_x;

    %I = 0;

    for i = 1:length(X)
        X(i) = fn(X(i)) * delta_x;
    end

    I = sum(X);
    X

end
