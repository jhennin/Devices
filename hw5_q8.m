beta = 100;

% For Vcc=15V and R=5.1k, find mirror current (IL) and Ib1
% Vcc - Icq*RC - Vbe = 0
% Vcc - Icq*RC = .7
R = 5.1e3;
Vcc = 15;
Icq = (Vcc - .7) / R
Ib = Icq / beta
IL = Vcc / R

% If mirror current IL=4mA, select R value:
% Vcc/R=4mA
R_new = Vcc / 4e-3
Icq_new = (Vcc - .7) / R_new
Ib_new = Icq_new / beta

% For design in previous part, if load resistor of 1k connected between the
% collector of T2 and a 10V DC, find Vce of T2
% -Vp + Icq*RL + Vce = 0
% -10 + (4.17mA)(1k) + Vce = 0
% -> Vce = 5.83

% In same circuit, if load resistor is 2.7k, can circuit still maintain
% IL=4mA
% -> -Vd + IL*RL + Vce = 0
% -> -10 + 4mA*2.7k + Vce = 0
% -> -4mA*2.7k + 10 = Vce = -8V
% -> The 2.7K load resistor will not work in this circuit b/c the 4mA current
% will not be maintained.
% -> (Vd - Vce) / RL = 7mA != 4mA