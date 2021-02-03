clear all; close all;

a = arduino('COM4', 'uno');

figure
h = animatedline;
ax = gca;
ax.YGrid = 'on';
ax.YLim = [1 5];
title('Sound sensor voltage vs time (live)');
ylabel('Voltage [volt]');
xlabel('Time [sec]');

stop = false;
tic; %start timer
voltage = zeros(1, 1000);
filter = 8; %set filter value
i = filter + 1;

while ~stop
    voltage(i) = readVoltage(a,'A2'); % Read current voltage value
    rollingav(i) = mean(voltage(i - filter:i));
    t = toc; % Get current time / changed
    addpoints(h, t, rollingav(i)) % Add points to animation / changed
    ax.XLim = [0 t]; % Update axes / changed
    %datetick('x','keeplimits');
    drawnow
    
    i = i + 1; %increment i
    stop = readDigitalPin(a,'D6');
end