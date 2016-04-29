Vdd = 15;
gos = .000002;
Idss = .035;
Vp = -3;
Av = -10;
% Zi > 100 Kohms
% Idq < 3 mA
Idq = .001; % pick this value

gm = 2*( Idss / abs(Vp) ) * sqrt( Idq / Idss )

% IdqRd = 4V
Rd_actual = 4 / Idq % Make sure the resistor value is standard
Rd = 4300

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

Vgs = Vp * (1 - sqrt (Idq / Idss ))

Vg = Vgs + (Idq * Rs_standard)

% Pick R1 value
R1_standard = 2000000

% Solve for R2, plug into wolfram alpha
% Vg = Vdd * (R2 / (R2 + R1)), R2)
R2_actual = 420721
R2_standard = 420000

% Zi = R1 // R2
Zi = (R1_standard * R2_standard) / (R1_standard + R2_standard)

% Zo = Rd //dRd
rd = 1 / gos
Zo = (Rd * rd) / (Rd + rd)

Av_actual = - (gm * Rd) / (1 + (gm * Rs_prime_standard))

Id_max = (Vdd - abs(Vp)) / Rd

% AC voltage swing of Vo
% (Id_max - Id)Rd <= Vo <= IdqRd
Vomin = -(Id_max - Idq) * Rd
Vomax = Idq * Rd

% input signal Vi
Vimin = Vomax / Av_actual
Vimax = Vomin / Av_actual
