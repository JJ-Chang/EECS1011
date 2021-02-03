clear all; close all;

a = arduino('COM4', 'uno');

% https://www.mathworks.com/videos/plotting-live-data-of-atemperature-sensor-using-arduino-and-matlab-121317.html

figure
h = animatedline;
ax = gca;
ax.YGrid = 'on';
ax.YLim = [1 5];
%ax.XLim = [0 1000] ; %changed
title('Sound sensor voltage vs time (live)');
ylabel('Voltage [volt]');
xlabel('Time [sec]'); %changed

% stop = false;
% startTime = datetime('now');
maxsample = 1000;
tic; %start timer
voltage = zeros(1, 1000);

for i = 6:maxsample
    voltage(i) = readVoltage(a,'A2'); % Read current voltage value
    rollingav(i) = mean(voltage(i - 4:i));
    t = toc; % Get current time / changed
    addpoints(h, t, rollingav(i)) % Add points to animation / changed
    ax.XLim = [0 t]; % Update axes / changed
    %datetick('x','keeplimits');
    drawnow
end