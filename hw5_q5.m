beta = 100;
Vcc = 15;
Icq = 3e-3;
Vceq = 4.5;
Vbe = .7;
% Vc needs to swing up 4V from Vcq

% Collector:
% -Vcc + Ic*RC + Vce + Ic*RE = 0

% Find R1, R2, RC, and RE
% IC*RC = 4
RC = 4 / Icq
% -15 + 4 + 4.5 + (.003)RE = 0
RE = (15-4-4.5)/.003
Vb = (Icq*RE) + Vbe
% 10R2 <= beta*RE
R2 = 15e3 %150000 <= 220000
% Vb = Vcc*(R2 / (R1+R2))
R1 = ((Vcc*R2) / Vb) - R2

% Verify selected resistors
% -> -15 + .003(1.3k) + 4.5 + .003(2.2k) = 0
% -> -15 + 3.9 + 4.5 + 6.6 = 0
% -> Vb = 7.3 = 15(15k / (15k + 16K))
% -> 7.3 ~ 7.258, check

% What is the max DC voltage swing of Vc from Vcq
Vc_max = Vcc - beta*(20e-9)*RC
Vc_min = Vcc - (Vcc / (RC + RE))*RC