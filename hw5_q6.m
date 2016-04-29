R1 = 15e3;
R2 = 15e3;
RE = 2e3;
beta = 100;
Vcc = 15;

% Collector:
% -Vcc + Vceq + Icq*RE = 0

% Find the q value: Icq, Vceq, Pcq
Vb = Vcc*(R2 / (R2 + R1))
% Vb = Ve + Vbe
Ve = Vb - Vbe
Icq = Ve / RE
Vceq = Vcc - (Icq * RE)
Ibq = Icq / beta
Pcq = Vceq * Icq

% Find the q value of Veq and max DC voltage swing of Ve from Veq
% Ve = Ic*RE
% Veq = Icq*RE
% -> Veq_min = 40uV @ Ic = 20nA
% -> Veq_max = 15V @ Ic = Vcc/RE = 7.5mA