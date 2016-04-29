% Zener Diode
Vz=5;
Izk=.5e-3;
Izt = 30e-3;
Izmax = 200e-3;
R1 = 36; % 1.5 watts

% Find Imain
% Imain = (2~3)*Izk = 1 mA

% What is the power rating of the zener diode D1 according to spec sheet?
% Pd = I2max*Vz = .2 * 5= 1W

% Find max load current (IL) and max power
IR = (12 - 5) / 36
% The load can draw a max .194.4A to maintain the 1mA that the zener diode
% requires to regulate the voltage.
PLoad = 5 * IR
