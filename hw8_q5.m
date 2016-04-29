Vdd = 15;
Rs = 2000;
R1 = 3000000;
R2 = 300000;
Idss = .025;
Vp = -4;

Vg = Vdd * (R2 / (R2 + R1))

poly = [(Rs^2) (2*(Vp-Vg)*Rs-(Vp^2/Idss)) ((Vp-Vg)^2)];

Idq=roots(poly)

% pick the value greater than Vp
Vgs = Vg - (Idq.*Rs)

Vsq = Idq .* Rs

gm = 2*( Idss / abs(Vp) ) * sqrt( Idq / Idss )

% Zo = Rs//(1/gm)
Zo = (Rs * (1/.0036)) / (Rs + (1/.0036))

% Zi = R1//R2
Zi = (R1 * R2) / (R1 + R2)

Av = (gm .* Rs) ./ (1 + (gm .* Rs))

% -Vcq <= Vo <= IcqRs
Icq .* Rs
% -10.8 <= Vo <= 4.2