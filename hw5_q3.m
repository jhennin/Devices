RC = 2.7e3;
RE = 1e3;
beta = 100;
Icq = 2e-3;
Vcc = 15;

% Calc base voltage, Vb
% Va = Vb = Vcc * (R2 / (R1 + R2))
Ve = Icq * RE;
Vb = Ve + .7

% Consider R2=9.1K, select R1:
R2 = 9.1e3;
% Vb = Vcc(R2 / (R2 + R1))
% 2.7 == 15*(9.1K / (9.1K + R1))
R1 = ((Vcc * R2)/ Vb) - R2

% Find the Thevenin equiv., point 'a' to ground:
Vth = Vb
% Rth = R1//R2
Rth = inv((1/R1) + (1/R2))

% What is the percentage of difference (Vb_load-Vb)/Vb
perc_diff = ((Vb_load - Vb) / Vb) * 100

% Considering Id=250uA (>=10Ib), find R1 & R2:
Vb_load = Vth * ( (beta*RE) / (Rth + (beta*RE)))
% 250uA - Vb/R1 - Vb/R2 = 0
% -> 250uA - 2.7( 1/R1 + 1/R2) = 0
% -> -2.7( (R2+R1)/(R2*R1) ) = -250uA
% (R2+R1)/R2*R1 = 92.8e-6
% -> assume R1 = 43K
% R2+R1 = (R1*R2)*92.8e-6
% R2 = R1*R2(92.8e-6) - R1
% R2 = 43k / 2.9904
% R2 = 14379 ~ 15k

% Find Thevenin eq. circuit w/new resistor values and base voltage Vb_load,
% with load resistor beta*RE:
% -> Rth_2 = R1//R2 = 11121
% -> Vth = 2.7V
% -> Vb_load = 2.7*(beta*RE / 11121 + beta*RE) = 2.43
% -> percent diff = 10%

% Comment on results:
% With more current going through R1 and R2 the more the voltage will drop
% for VB.




