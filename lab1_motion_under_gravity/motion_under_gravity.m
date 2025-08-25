% LAB 1: Motion Under Gravity (ELYM316 2025)
% Simulates a ball thrown vertically upwards with initial velocity 30 m/s
% under gravity, plots distance vs. time, and answers key questions.

% Define parameters
v0 = 30;          % Initial velocity (m/s)
g = -9.80;        % Gravitational acceleration (m/s^2), negative for downward
dt = 0.02;        % Time step (s)
t_max = 6.20;     % Maximum time (s)
t = 0:dt:t_max;   % Time array from 0 to 6.20 s

% Calculate height using kinematic equation: y = v0*t + (1/2)*g*t^2
y = v0*t + (1/2)*g*t.^2;

% Plot 1: Vertical motion of the ball
figure;
plot(t, y, 'b-', 'LineWidth', 2); % Blue line with thicker width
title('Vertical Motion of a Ball');
xlabel('Time (s)');
ylabel('Height (m)');
grid on; % Add grid for readability

% Find maximum height and related values
[maximum_height, index] = max(y);
time_at_max = t(index);

% Determine ground impact time
ground_index = find(y < 0, 1);
if ~isempty(ground_index)
    time_to_hit_ground = t(ground_index);
else
    time_to_hit_ground = NaN; % Handle if ball never hits ground
end

% Plot 2: Hypothetical motion with positive gravity
y_positive_g = v0*t + (1/2)*abs(g)*t.^2;
figure;
plot(t, y_positive_g, 'r-', 'LineWidth', 2); % Red line with thicker width
title('Hypothetical Motion with "Upward" Gravity');
xlabel('Time (s)');
ylabel('Height (m)');
grid on;

% Display results in console
fprintf('(i) To what maximum height does the ball rise? %.4f m\n', maximum_height);
fprintf('(ii) What is the index of time at maximum height? %d\n', index);
fprintf('(iii) How long does it take the ball to ascend to maximum height? %.2f s\n', time_at_max);
fprintf('(iv) How long does it take the ball to hit the ground? %.2f s\n', time_to_hit_ground);
fprintf('(v) What happens if the sign for gravitational acceleration is taken as positive? ');
fprintf('The ball rises indefinitely in a parabolic curve.\n');
