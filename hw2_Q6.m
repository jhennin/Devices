% Calculate gamma
clear gama
syms gama

Tk = 298.15; % 25 degrees celcius
k = 1.38e-23;
Eg = 1.1   * 1.6e-19;
Is = 100e-12;

% find gama
eqn = Is == (Tk^(3 + (gama./2))) .* exp(-Eg./(k.*Tk));
soluG = solve(eqn, gama);
gama = vpa(soluG)

% Calc Is @-2 & 55 degrees C
Tk_minus2 = 271.15;
Is_minus2 = (Tk_minus2^(3 + (gama./2))) .* exp(-Eg./(k.*Tk_minus2))
Tk_55 = 328.15;
Is_55 = (Tk_55^(3 + (gama./2))) .* exp(-Eg./(k.*Tk_55))

% Calculate Id @-2. 25, & 55 Celcius
Vd = .7;
n = 2;
q = 1.6e-19;
Vt_minus2 = (k * Tk_minus2) / q;
Vt_25 = (k * Tk) / q;
Vt_55 = (k * Tk_55) / q;

Id_minus2 = Is_minus2 * ((exp(Vd / (n * Vt_minus2))) - 1)
Id_25 = Is * ((exp(Vd / (n * Vt_25))) - 1)
Id_55 = Is_55 * (exp(Vd / (n * Vt_55)) - 1)

% Calculate dynamic resistance, Rd
Rd_minus2 = (n .* Vt_minus2) ./ Id_minus2
Rd_25 = (n .* Vt_25) ./ Id_25
Rd_55 = (n .* Vt_55) ./ Id_55

% The negative temp coefficient of diodes shows that as temperature
% increases the resistance goes down.