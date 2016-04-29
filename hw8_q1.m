Vdd = 15;
Rd = 2400;
Rs = 1500;
Rg = 2000000;
Idss = .03;
Vp = -3;
gos = .000002;
Vg = 0; % b/c its JFET

poly = [(Rs^2) (2*(Vp-Vg)*Rs-(Vp^2/Idss)) ((Vp-Vg)^2)];

Idq=roots(poly)

Vgs = -Idq .* Rs % Choose the value greater than Vp

gm = 2 .* (Idss / abs(Vp)) * sqrt(Idq ./ Idss) % solve for gm to get Av

Av = (gm .* Rs) / (1 + (gm .* Rs))

Idqmax = (Vdd - abs(Vp)) ./ (Rs + Rd) % solve for Idqmax to get Vo range

Vomin = -Rd .* (Idqmax - Idq)
Vomax = Idq .* Rd

Zi = Rg

Zo = Rs ./ (1 + (gm * Rs)) % 'Rs // (1/gm)' -> (Rs .* (1 ./ gm)) / (Rs + (1 ./ gm))