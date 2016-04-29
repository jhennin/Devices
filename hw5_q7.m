beta = 100;
Vcc = 15;
Icq = 2e-3;
Vbe = .7;
% Ve need to swing down at least 4V from Veq

% Find R1, R2, and Re
% Ve = 4V = Icq*RE
RE = 4 / Icq
% Vb = Vcc*(R2 / (R2 + R1) = Ve + Vbe = 4.7V
% 10R2 <= beta*RE
Vb = 4.7;
R2 = 15e3
R1 = ( (Vcc*R2) / Vb) - R2

% Verify resistor values
% -Vcc + Vceq + Ic*RE = 0
% -15 + Vceq + 4 = 0
% Vceq = 11, check
verify = 15*(15e3 / (33e3 + 15e3)) %check

% Find Vce of T2 if load resistor 1K is connected
% -> Veq = Icq*RE
% -> Veq_min = 40uV @ Ic = 20nA
% -> Veq_max = 15V @ Ic = Vcc/RE = 15/2000 = 7.5mA