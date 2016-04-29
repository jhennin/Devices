% Design BJT common emitter amp w/volt divider
% -40mV <= Vi <= 70mV
% AV close to 50
% Icq<=2mA
% Zi > 3K
beta = 100;
Vcc = 15;
ro = 35e3;

% Find Icq and Vceq
Icq = 1.5e-3 %pick this
re = 26e-3 / Icq
% Rc*Icq = 3V
RC = 3 / Icq
% AV = -RC / (re+RE')
AV = -50;
RE_prime = (-RC/AV) - re
Vcq = Vcc - (Icq*RC)
Vceq = 5.5
Ve = Vcq - Vceq

% Find Zi, Zo, AV
RE = Ve/Icq
RE = 5.1e3 %standard
R2 = (beta*RE)/10
Vb = Ve + .7
% Vb = Vcc(R2/(R1+R2))
R1 = ((Vcc*R2) / Vb) - R2
R1 = 43e3 %standard
% Zi = R1//R2//beta*RE
Zi = inv( (1/R1) + (1/R2) + (1/(beta*(re + RE_prime)))) % Zi > 2K check
AV_actual = RC / (re + RE_prime) % check
% Zo = ro//RC
Zo = inv( (1/ro) + (1/RC)) %check