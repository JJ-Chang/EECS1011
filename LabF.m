% a = arduino('COM4', 'uno');

%PART 1
writeDigitalPin(a, 'D13', 1); %turn on
pause(0.5); %wait .5 seconds
writeDigitalPin(a, 'D13', 0); %turn off
pause(0.5);
writeDigitalPin(a, 'D13', 1); %turn on
pause(1);
writeDigitalPin(a, 'D13', 0);

%PART 2
writePWMDutyCycle(a,'D5',0.33); %pulse on 33% of time
%writePWMDutyCycle(a, 'D5', 0.50); %pulse on 50% of the time
pause(0.2); 
writeDigitalPin(a,'D5',0);