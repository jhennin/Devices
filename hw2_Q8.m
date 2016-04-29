gama = 1;
k = 1.38e+23;
Eg = 1.1 * 1.6e-19;
q = 1.6e-19
Tk_minus20 = 273 + -20;
Tk_27 = 273 + 27;
Tk_55 = 273 + 55;
Id = 5e-3;
n = 2;

Is_minus20 = (Tk_minus20^(3 + (gama/2))) * exp(-Eg/(k*Tk_minus20));
Is_27 = (Tk_27^(3 + (gama/2))) * exp(-Eg/(k*Tk_27));
Is_55 = (Tk_55^(3 + (gama/2))) * exp(-Eg/(k*Tk_55));

Vt_minus20 = (k * Tk_minus20) / q
Vt_27 = (k * Tk_27) / q;
Vt_55 = (k * Tk_55) / q;

clear Vt_minus20
syms Vt_minus20
eqn1 = Id == Is_minus20 * (exp(Vd1 / (n * Vt_minus20)) - 1);
soluVd1 = solve(eqn1, Vd1);
Vd_minus20 = vpa(soluVd1)

clear Vt_27
syms Vt_27
eqn2 = Id == Is_27 * ((exp(Vd2 / (n * Vt_27))) - 1);
soluVd2 = solve(eqn2, Vd2);
Vd_27 = vpa(soluVd2)

clear Vt_55
syms Vt_55
eqn3 = Id == Is_55 * (exp(Vd3 / (n * Vt_55)) - 1);
soluVd3 = solve(eqn3, Vd3);
Vd_55 = vpa(soluVd3)
