% LAB 4: Simulating Radioactive Decay Process (ELYM316 2025)
% Simulates radioactive decay using the Euler algorithm, estimates half-life and time constant.

% PARAMETERS
n = 100;
N0 = 1000;
tau = 1.0;
Delta = 0.02;
time = 0:Delta:(n+1)*Delta;
N = zeros(1, length(time));

% EULER METHOD
N(1) = N0;
for i = 1:n+1
    N(i+1) = N(i) - Delta * N(i) / tau;
end

% (i) HALF-LIFE ESTIMATION
% Theoretical half-life
half_life_theo = tau * log(2);
half_atoms = N0 / 2;

% Experimental half-life
[~, idx_half] = min(abs(N - half_atoms));
half_life_exp = time(idx_half);

% Plot for half-life
figure;
plot(time, N, 'bo-', 'MarkerSize', 3);
xlabel('Time (s)');
ylabel('Number of Atoms');
title('Radioactive Decay: Experimental Half-Life');
grid on;
saveas(gcf, 'decay_half_life.png');

% Output half-life results
fprintf("----- Half-Life -----\n");
fprintf("Theoretical Half-life: %.4f s\n", half_life_theo);
fprintf("Experimental Half-life: %.4f s\n", half_life_exp);
fprintf("Atoms remaining at half-life: %.2f (Expected: 500)\n", N(idx_half));

% (ii) TIME CONSTANT ESTIMATION
% Experimental time constant using linear regression
valid_idx = N > 0;
logN = log(N(valid_idx));
time_valid = time(valid_idx);
p = polyfit(time_valid, logN, 1);
slope = p(1);
tau_exp = -1 / slope;

% Atoms remaining at t = 2s
t_final = 2.0;
[~, idx_final] = min(abs(time - t_final));
N_exp_final = N(idx_final);
N_theo_final = N0 * exp(-t_final / tau);

% Plot for time constant
figure;
plot(time, log(N), 'bo-', 'MarkerSize', 3);
hold on;
plot(time_valid, polyval(p, time_valid), 'r-', 'LineWidth', 2);
xlabel('Time (s)');
ylabel('log(Number of Atoms)');
title('Decay Curve Fit for Time Constant Estimation');
legend('log(N)', 'Linear Fit');
grid on;
saveas(gcf, 'decay_time_constant.png');

% Output time constant results
fprintf("----- Time Constant -----\n");
fprintf("Theoretical Tau: %.4f s\n", tau);
fprintf("Experimental Tau: %.4f s\n", tau_exp);
fprintf("Atoms remaining at t = %.2f s:\n", t_final);
fprintf(" Theoretical = %.2f\n", N_theo_final);
fprintf(" Experimental = %.2f\n", N_exp_final);
