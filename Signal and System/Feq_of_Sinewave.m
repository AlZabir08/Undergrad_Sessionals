% Define time vector
t = 0:0.01:2*pi;
% Define frequencies
frequencies = [2,4,6];
% Generate sinusoidal waves
figure;
for i = 1:length(frequencies)
    subplot(length(frequencies), 1, i);
    frequency = frequencies(i);
    x = sin(2*pi*frequency*t);
    plot(t, x);
    title(['Sinusoidal Wave with Frequency = ', num2str(frequency)]);
    xlabel('Time (s)');
    ylabel('Amplitude');
    grid on;
end
