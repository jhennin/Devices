R1 = 51e3;
R2 = 10e3;
RC = 3.6e3;
RE = 1.2e3;
beta = 100;
ro = 35e3;
Vcc = 15;
Vbe = .7

% Find Icq and Vceq
Vb = (R2 / (R2 + R1))*Vcc
Ve = Vb - Vbe
Ie = Ve/RE;
Icq = Ie
Vceq = Vcc - Icq*(RC + RE)

% Find Zi and Zo
% R_prime = R1//R2
R_prime = (R1*R2) / (R1+R2)
% Zi = R'//beta*re
re = 26e-3/Ie
Zi = (R_prime*(beta*re)) / (R_prime+(beta*re))
Zo = RC

% Find Av
% Av = - (RC//ro) / re
AV = - ( (RC*ro) / (RC+ro)) / re

% Find max swing of output AC, Vo
% Vmin <= Vo <= Vmax
% -Vcq <= Vo <= Icq*RC
Vmin = -Vceq
Vmax = Icq*RC

% Find linear range of input signal Vi
Vi_min = -Vceq / AV
Vi_max = (Icq*RC) / AV