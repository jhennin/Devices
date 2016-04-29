% Design a BJT common emitter amp w/volt divide
% -5V <= Vo <= 5V
% AV close to 100
% Ieq <= 2mA
% Zi >3K
beta = 100;
Vcc = 15;
ro = 35e3;

% Find Icq and Vceq
% Av = - delta Vo / delta Vi
Vi_delta = -10 / -100
% -50mV <= Vi <= 50mV
Icq = 1e-3 % Icq <= 2mA
re = 26e-3 / Icq
% RC*Icq >= 5V
RC = 5.5 / Icq
RC = 5.6e3 %standard value
% AV = -RC / (re+RE')
AV = -100
RE_prime = (-RC / AV) - re
RE_prime = 27 %standard value
Vcq = Vcc - (Icq*RC)
Vceq = 5.5 %pick this based on Vcq
Ve = 3.9 %based on Vceq and Vcq

% Find Zi, Zo, AV
RE = Ve / Icq
R2= (beta*RE) / 10
Vb = Ve + .7
% Vb = Vcc(R2/(R2+R1))
R1 = ((Vcc * R2) / Vb) - R2
% Zi = R1//R2//beta*RE
Zi = inv( (1/R1) + (1/R2) + (1/(beta*(re + RE_prime)))) % Zi > 2K check
AV_actual = RC / (re + RE_prime) % check
% Zo = ro//RC
Zo = inv( (1/ro) + (1/RC)) %check

% Find linear range
Vi_min = -5 / -105
Vi_max = 5 / -105