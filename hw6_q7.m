beta = 100;
Vcc = 15;
ro = 35e3;
R1 = 30e3;
R2 = 20e3;
RE = 5.1e3;
Vbe = .7

% Find Icq and Vceq
Vb = Vcc * (R2 / (R2 + R1))
Ve = Vb - Vbe
Ie = Ve/RE;
Icq = Ie
Vceq = Vcc - Ve

% Find range of output volt swing
Vsat = .3;
Vo_min = Vsat - Vcq
Vo_max = Icq*RE

% Find Zi and Zo
% Zi = R1//R2//beta(RE + re)
re = 26e-3/Icq;
Zi = inv( (1/R1) + (1/R2) + (1/(beta*(re + RE)))) % Zi > 2K check
Zo = re

% Find AV and linear range
% AV = - RE / (RE + re)
AV = -1
Vi_min = Vo_min / AV
Vi_max = Vo_max / AV