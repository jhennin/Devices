Vdd = 15;
Idss = .03;
Vp = -3;
gos = .000002;
Av = -10;

% Idq < 3 mA
% Zi > 1 M ohms

Rg = 2000000; % picked this value, should be really large

Idq = .001; % pick this value

gm = 2*( Idss / abs(Vp) ) * sqrt( Idq / Idss )

% IdqRd = 4V
Rd_actual = 4 / Idq % Make sure the resistor value is standard
Rd = 4300

verify = gm * Rd % Verify gmRd>required Av

Vdq = Vdd - (Idq * Rd) 

% Split Vdq between Vsq & Vdsq
Vsq = Vdq / 2
Vdsq = Vdq / 2

% solve for (Rs + Rs')
Rs_prime_plus_Rs = (Vsq / Idq) 

% Solve for Rs_prime_actual then pick standard value
% Av = -(gm * Rd) / (1 + (gm * Rs_prime))
Rs_prime_actual = (( (-gm * Rd) / Av) - 1) / gm
Rs_prime_standard = 150;

% Solve for Rs_actual then pick standard value
Rs_actual = Rs_prime_plus_Rs - Rs_prime_actual
Rs_standard = 5100;

Zi = Rg

% Zo = Rs//(1/gm)
Zo = (Rs * (1 / gm)) / (Rs + (1 / gm))

Av_actual = - (gm * Rd) / (1 + (gm * Rs_prime_standard))

Id_max = (Vdd - abs(Vp)) / Rd

% (Id_max - Id)Rd <= Vo <= IdqRd
Vomin = -(Id_max - Idq) * Rd
Vomax = Idq * Rd




