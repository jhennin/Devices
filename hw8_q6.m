Vdd = 20;
Rd = 2200;
Rs = 2000;
Rs_prime = 51;
R1 = 4000000;
R2 = 2000000;
Id_on = .06;
Vgs_on = 2.8;
Vt = 2;

k = Id_on / (Vgs_on - Vt)^2

Vg = Vdd * (R2 / (R2 + R1))

poly = [(k*Rs^2) -(2*k*(Vg-Vt)*Rs+1) (k*(Vg-Vt)^2)];

Idq=roots(poly)

% Vgsq has to be > Vt
Vgsq = Vg - (Idq * Rs)

Vdq = Vdd - (Idq .* Rd)

Vsq = Idq .* (Rs_prime + Rs)

Vds = Vdd - (Idq .* Rd) - Idq .* (Rs_prime + Rs)

P = Vdd .* Idq

% Find the AC Voltage swing of Vo
Id_max = (Vdd - abs(Vt)) / Rd

% (Id_max - Id)Rd <= Vo <= IdqRd
Vomin = -(Id_max - Idq) * Rd
Vomax = Idq * Rd

% Zo = Rd // rd
rd = 1 / gos
Zo = (Rd * rd) / (Rd + rd)

% Zi = R1 // R2
Zi = (R1 * R2) / (R1 + R2)

gm = 2 * k * (Vgsq - Vt)

Av = -(gm .* Rd) ./ (1 + (gm .* Rs_prime))



