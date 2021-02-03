%Jada Chang 218016790
%Minor Project final source code

clear all;
a = arduino('COM4', 'uno');

%Test values in cmdln before running
air = 3.6364;
water = 2.4487;
wetSoil = 2.9765;

disp('before');
readVoltage(a, 'A1')

while(readVoltage(a, 'A1') > wetSoil)
writeDigitalPin(a, 'D2', 1);
end

writeDigitalPin(a, 'D2', 0);
disp('after');
readVoltage(a, 'A1')