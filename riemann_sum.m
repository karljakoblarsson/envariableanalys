function I = riemann_sum(fn, a, b, N)
    % Check the of arguments.
    % N is optional and has a default value.
    if nargin == 3
        N = 100;
    elseif nargin ~= 4
        error('riemann_sum: Wrong number of arguments');
    end

    % The actual function:

    intervall_size = b - a;
    delta_x = intervall_size / N;

    % Set the list X as the partition-numbers.
    X = 0:N - 1;
    % Set X as the x value for each rectangle
    X = X .* delta_x;

    % Shift x to the middle of the partition.
    X = X + delta_x/2;

    % apply the function to each x value and
    % multiplicate witch delta_x get the area for each partition.
    for i = 1:length(X)
        X(i) = fn(X(i)) * delta_x;
    end

    % sum all the parttion areas together.
    I = sum(X);

end
