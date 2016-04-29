R1 = 47e3;
R2 = 39e3;
Rc = 2.7e3;
Re = 6.2e3;
Re_prime = 62;
Ri = 250;
RL = 10e3
beta = 100;
ro = 35e3;
Icq = 1.03e-3;
CB = .1e-6;
CC = .22e-6;
CE = 2.2e-6;
Cbe = 5e-12;
Cce = 2e-12;
Cbc = 1e-12;
Cwi = 10e-12;
Cwo = 10e-12;

% Zi = R1//R2//beta(re + Re')
re = 26e-3 / Icq
Zi = inv( (1/R1) + (1/R2) + (1/ (beta * (re + Re_prime))) )
FL1 = 1 / (2*pi*(Zi + Ri)*CB)

% Zo = Rc // ro
Zo = inv( (1/Rc) + (1/ro) )
FL2 = 1 / (2*pi*(RL + Zo)*CC)

% Req = Re//(re + Re' + ( (R1//R2//Ri) / beta) )
R1_R2_Ri_overBeta = inv ( (1/R1) + (1/R2) + (1/Ri)) / beta
Req = inv( (1 / Re) + ( 1 / (re + Re_prime + R1_R2_Ri_overBeta)))
% Req = inv( (1 / re) + (1 / Re_prime) + (inv( (re + Re_prime + ( ( (1/R1) + (1/R2) + (1/Ri)) / beta))) ) )
FL3 = 1 / (2*pi*(Req)*CE)
