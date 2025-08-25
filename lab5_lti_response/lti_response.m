% LAB 5: Step and Impulse Response of LTI System using Matlab (ELYM 316 2025)
% Analyzes LTI system responses for two tasks.

%% Task 1: Impulse and Step Response of H(s) = (s + 5)/(s^2 + 2s + 5)
% Define transfer function
num1 = [1, 5];      % Numerator: s + 5
den1 = [1, 2, 5];   % Denominator: s^2 + 2s + 5
sys1 = tf(num1, den1);

% Impulse Response
[y_imp1, t_imp1] = impulse(sys1);
figure('Name', 'Task 1: Impulse Response', 'NumberTitle', 'off');
plot(t_imp1, y_imp1, 'Color', [0.5, 0, 0.5], 'LineWidth', 1.5); % Purple color
title('Impulse Response of H(s) = (s + 5)/(s^2 + 2s + 5)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
saveas(gcf, 'impulse_response_task1.png');

% Step Response
[y_step1, t_step1] = step(sys1);
figure('Name', 'Task 1: Step Response', 'NumberTitle', 'off');
plot(t_step1, y_step1, 'Color', [0.5, 0, 0.5], 'LineWidth', 1.5); % Purple color
title('Step Response of H(s) = (s + 5)/(s^2 + 2s + 5)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
saveas(gcf, 'step_response_task1.png');

%% Task 2: Output for x(t) = u(t - 3) with h(t) = e^(-3t)u(t)
% Time vector
t = 0:0.01:10;  % Time from 0 to 10 seconds

% Define impulse response
h = @(t) exp(-3*t).*(t >= 0);

% Input signal (delayed unit step)
u = @(t) 1.0*(t >= 0);
x = u(t - 3);

% Compute output via convolution
y = conv(x, h(t))*0.01; % Numerical convolution
y = y(1:length(t));     % Truncate to original length

% Plot input and output
figure('Name', 'Task 2: Input and Output', 'NumberTitle', 'off');
plot(t, x, 'b-', 'LineWidth', 2, 'DisplayName', 'Input x(t) = u(t-3)');
hold on;
plot(t, y, 'r-', 'LineWidth', 2, 'DisplayName', 'Output y(t)');
title('System Response to Delayed Step Input');
xlabel('Time (s)');
ylabel('Amplitude');
legend('Location', 'best');
grid on;
hold off;
saveas(gcf, 'input_output_task2.png');

% Plot Step Response
figure('Name', 'Task 2: Step Response', 'NumberTitle', 'off');
step_resp = cumsum(h(t))*0.01; % Integral of impulse response
plot(t, step_resp);
title('Step Response of h(t) = e^{-3t}u(t)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
saveas(gcf, 'step_response_task2.png');

% Plot Impulse Response
figure('Name', 'Task 2: Impulse Response', 'NumberTitle', 'off');
plot(t, h(t));
title('Impulse Response of h(t) = e^{-3t}u(t)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
saveas(gcf, 'impulse_response_task2.png');