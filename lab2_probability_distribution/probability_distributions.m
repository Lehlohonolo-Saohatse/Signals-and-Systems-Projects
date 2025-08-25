% LAB 2: Probability Distributions (ELYM316 2025)
% Generates a 1000-point Gaussian distribution with mu = 0, sigma = 1,
% plots it, and estimates the Full Width at Half Maximum (FWHM).

% Parameters
mu = 0;          % Mean
sigma = 1;       % Standard deviation
n_points = 1000; % Number of points

% Generate Gaussian random numbers
x = linspace(-5, 5, n_points); % Range for x values
y = (1/(sigma * sqrt(2 * pi))) * exp(-((x - mu).^2) / (2 * sigma^2));

% Plot the distribution
figure;
plot(x, y, 'b-', 'LineWidth', 2);
title('Gaussian Distribution (μ = 0, σ = 1)');
xlabel('x value');
ylabel('y(x)');
grid on;
% Save plot (uncomment to save)
% saveas(gcf, 'gaussian_distribution.png');

% Theoretical FWHM
theoretical_fwhm = 2 * sigma * sqrt(2 * log(2)); % 2σ√(2ln2)

% Find maximum y value and half maximum
y_max = max(y);
half_max = y_max / 2;

% Estimate FWHM from data
% Find points where y crosses half maximum
above_half = find(y >= half_max);
if ~isempty(above_half)
    left_idx = above_half(1);
    right_idx = above_half(end);
    experimental_fwhm = x(right_idx) - x(left_idx);
else
    experimental_fwhm = NaN;
end

% Values of y(x) at FWHM (approximate at half_max points)
y_at_fwhm_theoretical = half_max; % Theoretical y at FWHM
y_at_fwhm_experimental = mean(y([left_idx, right_idx])); % Approx experimental

% Display results
fprintf('Theoretical FWHM: %.4f\n', theoretical_fwhm);
fprintf('Experimental FWHM: %.4f\n', experimental_fwhm);
fprintf('Comparison: Theoretical ≈ Experimental? %s\n', ...
    abs(theoretical_fwhm - experimental_fwhm) < 0.1);
fprintf('Theoretical y(x) at FWHM: %.4f\n', y_at_fwhm_theoretical);
fprintf('Experimental y(x) at FWHM: %.4f\n', y_at_fwhm_experimental);
