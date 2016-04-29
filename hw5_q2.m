beta = 100
Vcc = 15;
Icq = 1.5e-3
Vceq = 8.5
Vbe = .7;

% Vc swing up at least 2V from Vcq

% Base:
% -Vcc + IB*RB + VBE + IC*RE = 0

% Collector:
% -Vcc + IC*RC + VCE + IC*RE = 0

% Find RB, RC, and RE
% RE = (Vcc - Vceq - (Icq*RC)) / Icq
RE = (Vcc - Vceq - 2) / Icq
IB = Icq / beta;
RB = (Vcc - Vbe - (Icq*RE)) / IB
% IC*RC = 2V
RC = 2 / Icq

% Verify specifics
% -Vcc + Ib*RB + Vbe + Icq*RE = 0
% -15 + 9.8 + .7 + 4.5 = 0, check
% -Vcc + Icq*RC + Vce + Icq*RE = 0
% -15 + 2 + 8.5 + 4.5 = 0

% What is max DC voltage swing of Vc from Vcq?
% Vc = Vcc - IcqRC
Icbo = 20e-9;
Vce_sat = .2;
Vc_max = Vcc - beta*(Icbo)*(1.3e3)
Vc_min = Vcc - ( (Vcc - Vce_sat) / (RE + RC)) * 1.3e3