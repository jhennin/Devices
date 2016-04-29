R1 = 51e3;
R2 = 10e3;
RC = 3.6e3;
RE = 1.2e3;
beta = 100;
Vcc = 15;
Vbe = .7

% Collector:
% -Vcc + Ic*RC + Vce + Ic*RE = 0

% Find Icq, Vceq, and Pcq
Vb = Vcc*(R2 / (R2 + R1))
Ve = Vb - Vbe
Icq = Ve/RE
Vceq = 15 - 5.4 - 1.8
Pcq = Vceq * Icq
Ibq = Icq/beta

% Find q valueof Vcq
% Vce = Vc - Ve
Vcq = Vceq + Ve
% Vc = Vcc - Ic*RC
Vc_max = Vcc - beta*(20e-9)*RC
Vc_min = Vcc - (Vcc / (RC + RE))*RC

% Find q valueof Vcq w/increased beta 20%
% -> Ibq = 13uA
% -> Icq = 1.5mA
% -> Vceq = 7.8V
% Icq and Vceq don't change b/c their values are not influenced by beta, as
% found in part a.