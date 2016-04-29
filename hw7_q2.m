Id = .002;
Idss = .035;
Vp = -3;
Vg = 0;

poly = [(Id^2), (2*(Vp-Vg)*Id), (-Id*((Vp^2)/Idss)+((Vp-Vg)^2))];

Rs=roots(poly)

Vs=Id.*Rs

Vgs = Vg - Vs

Rd = 2000;

Vd = 15-Id*Rd;

