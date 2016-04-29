% Design emitter follower w/volt divde
% -5V <= Vo <= 5V
% Zi > 30K
% Ieq <= 2mA
beta = 100;
Vcc = 15;
ro = 35e3;

% Find Icq and Vceq
Ieq = 1.5e-3; %pick this
Icq = Ieq
re = 26e-3 / Icq
% RE > 3V/Icq
RE = 3 / Icq
RE = 2.2e3 %pick standard value
Ve = Icq*RE
Vb = Ve + .7
R2 = (beta*RE)/10
Vceq = Vcc - (Icq*RE)

% Find Zi, Zo
% Zi = R1//R2//beta(RE + re)
% Zo = re
% AV = -RE / (RE + re)
