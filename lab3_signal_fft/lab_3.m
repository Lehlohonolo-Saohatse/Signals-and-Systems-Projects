% LAB 3: Signal Generation and Fast Fourier Transforms (FFTs) - ELYM 315 2025
% Generates 1 Hz, 5 Hz, and 10 Hz signals, combines them with noise, and uses FFT to recover frequency components.

% Define signal parameters
fs = 100;    % Sampling frequency (Hz)
T = 1;       % Total time (s)
t = 0:1/fs:T-1/fs; % Time vector

% Generate sinusoidal signals
f1 = 1;  A1 = 3;  x1 = A1 * sin(2*pi*f1*t);    % 1 Hz signal
f5 = 5;  A5 = 2;  x5 = A5 * sin(2*pi*f5*t);    % 5 Hz signal
f10 = 10; A10 = 1; x10 = A10 * sin(2*pi*f10*t); % 10 Hz signal

% Combining signals
x_combined = x1 + x5 + x10;

% Adding random noise
noise = 0.5 * randn(size(t));
x_noisy = x_combined + noise;

% Compute FFT
N = length(t);
X_f = fft(x_noisy);
X_magnitude = abs(X_f) / N;
freqs = (0:N-1) * (fs/N);

% Plot results
figure;

subplot(3,2,1);
plot(t, x1, 'r'); title('1 Hz Signal'); xlabel('Time (s)'); ylabel('Amplitude');
saveas(gcf, '1hz_signal.png');

subplot(3,2,2);
plot(t, x5, 'g'); title('5 Hz Signal'); xlabel('Time (s)'); ylabel('Amplitude');
saveas(gcf, '5hz_signal.png');

subplot(3,2,3);
plot(t, x10, 'b'); title('10 Hz Signal'); xlabel('Time (s)'); ylabel('Amplitude');
saveas(gcf, '10hz_signal.png');

subplot(3,2,4);
plot(t, x_noisy, 'k'); title('Combined Signal with Noise'); xlabel('Time (s)'); ylabel('Amplitude');
saveas(gcf, 'combined_signal.png');

subplot(3,2,[5 6]);
plot(freqs(1:N/2), 2*X_magnitude(1:N/2), 'm');
title('FFT Spectrum'); xlabel('Frequency (Hz)'); ylabel('Magnitude'); grid on;
saveas(gcf, 'fft_spectrum.png');

disp('FFT analysis completed.');