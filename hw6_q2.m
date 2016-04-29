% Design BJT common emitter
% -10mV <= Vi <= 10mV
% Icq <= 2mA
% Zi > 2K
beta = 100;
ro = 35e3;
Vcc = 15;

% Design such that voltage gain is close to 100
% AV = - (delta Vo / delta Vi)
delta_Vo = 100 * 20
% -1V <= Vo <= 1V

% Find Icq and Vceq
% Icq*RC > 1V
Icq = 1e-3
% AV = -RC / re
re = 26;
RC = -100 * re
RC = 2.7e3 %standard value
Vcq = Vcc - Icq*RC
Vceq = 3.2
Ve = 10

% Find Zi, Zo and AV
Vb = Ve + .7
% Icq*RE = 10
RE = 10 / Icq
% R2 <= beta*RE / 10
R2 = (beta*RE)/ 10
% Vb = Vcc(R2/(R2+R1))
R1 = ((Vcc*R2) / Vb) - R2
R1 = 43e3 %standard value
% Zi = R1//R2//beta*RE
Zi = inv( (1/R1) + (1/R2) + (1/(beta*re))) % Zi > 2K check
AV_actual = -2.7e3 / 26 % check
% Zo = ro//RC
Zo = inv( (1/ro) + (1/RC)) %check

