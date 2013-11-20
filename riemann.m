%%% Calculate the Riemann-sum
%%% Either the left, rigth or middle. depending on the type argument
%%% 'l' = left, 'm' = middle, 'r' = right

function I = riemann(fn, a, b, N, type)
    %%% Check the of arguments.
    % N is optional and has a default value.
    if nargin == 3
        N = 100;
    % Depending on the type argument the function can use either the left, middle
    % or right point i each partition.
    elseif nargin == 4
        type = 'm';
    elseif nargin ~= 5
        error('riemann_sum: Wrong number of arguments');
    end

    %%% The actual function:
    interval_size = b - a;
    delta_x = interval_size / N;

    % Set the list X as the partition-numbers.
    X = 0:N - 1;
    % Set X as the x value for each rectangle
    X = X .* delta_x;
    % Shift to the start of the interval
    X = X + a;

    % Shift x to the middle of the partition or the rightside depending on type
    if type == 'm'
        X = X + delta_x/2;
    elseif type == 'r'
        X = X + delta_x;
    end

    % apply the function to each x value and
    % multiplicate witch delta_x get the area for each partition.
    for i = 1:length(X)
        X(i) = fn(X(i)) * delta_x;
    end

    % sum all the parttion areas together.
    I = sum(X);

end
