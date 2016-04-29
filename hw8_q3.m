Vdd = 15;
Rd = 2200;
Rs = 1800;
Rs_prime = 33;
R1 = 2700000;
R2 = 240000;
gos = .000002;
Idss = .025;
Vp = -4;
Vbe = .7;

Vg = Vdd * (R2 / (R2 + R1))

poly = [(Rs^2) (2*(Vp-Vg)*Rs-(Vp^2/Idss)) ((Vp-Vg)^2)];

Idq=roots(poly)

% pick the value that is greater than Vp
Vgs = Vg - (Idq * Rs)

Vdq = Idq .* Rd

P = Vdd .* Idq

Id_max = (Vdd - abs(Vp)) / Rd

% (Id_max - Id)Rd <= Vo <= IdqRd
Vomin = -(Id_max - Idq) * Rd
Vomax = Idq * Rd

% Zi = R1 // R2
Zi = (R1 * R2) / (R1 + R2)

% Zo = Rd // rd
rd = 1 / gos
Zo = (Rd * rd) / (Rd + rd)

gm = 2*( Idss / abs(Vp) ) * sqrt( Idq / Idss )

Av = -(gm * Rd) / 1 + (gm * Rs_prime)
