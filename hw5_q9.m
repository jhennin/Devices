Vz = 5.1;
Imain = 4e-3;
Vcc = 15;
beta = 100;

% Find R1 and Re such that current source is 8mA
Icq = 8e-3;
R = (Vcc - Vz) / Imain
RE = (Vz - Vbe) / Icq

% If load resistor of 1.2k connected between the collector and a 20V DC
% source can the circuit maintain IL=8mA?
% -Vd + Icq*RL + Vce + Ic*RE = 0
Vd = 20;
RL = 1.2e3
Vce = -Vd + (Icq*RL) + (Icq*560)
% Yes the current can be maintained.

% What is the highest load resistor value for the current source to sink
% 8mA with a 20V DC source?
% ->The saturation voltage for tis tranisitor is approx. 0.2V. So Vce must
% be greater than or = 0.2V.  RL_max = 1915, to satisfy Vce >= 0.2V.
