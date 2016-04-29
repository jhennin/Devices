% Design BJT common emitter with volt divider
% -50mV <= Vi <= 50mV
% Icq <= 2mA
% Zi > 4K
beta = 100;
Vcc = 15;
ro = 35e3

% Design circuit such that peak-to-peak = 3V (-1.5V <= Vo < 1.5V):
AV = -3 / 100e-3
% Icq*RC >= 1V
Icq = 1e-3
RC = 1 / Icq
re = 26e-3 / Icq
% AV = -RC / (re + RE')
RE_prime = (-RC / AV) - re

% Find Icq and Vceq
Vcq = Vcc - (Icq*RC)
Vceq = Vcq / 2
Ve = Vcq / 2

% Find Zi, Zo and AV
Vb = Ve + .7
RE = Ve / Icq
R2 = (beta*RE) / 10
% Vb = Vcc(R2 / (R2 + R1)
R1 = ((Vcc*R2) / Vb) - R2
% Zi = R1//R2//beta*RE
Zi = inv( (1/R1) + (1/R2) + (1/(beta*RE))) % Zi > 2K check
AV_actual = RC / 26 % check
% Zo = ro//RC
Zo = inv( (1/ro) + (1/RC)) %check

