% AC source is 20cos(800x2pit)
R1 = 100

% Find Vpeak of output Vo
% n -> # of diodes
Vin = 20;
Vknee = .7
Vpeak = Vin - (Vknee * n)

% Find average DC voltage Vo
Vdc = .636 * Vpeak

% Find max forward biased (peak surge) current through D1, D2, D3, D4
Ipeak = Vpeak / R1

% Find peak reverse voltage across D1, D2, D3, and D4
% Vpeak(negative) = 20V

% Find average DC load current through R1 and power dissipated?
RL = 100;
Idc = Vdc / RL
P = Idc * Vdc

% Does 1N4001 fit?
% Yes, the forward and reverse voltages don't exceed 50 V and the peak
% current is less than 1 amp.