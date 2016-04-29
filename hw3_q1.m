R1 = 100;

% Find Vpeak
% Vpeak = Vin - Vknee
Vpeak = 20-.7

% Find average DC voltage
Vdc = .318 * Vpeak

% Find max forward biased (peak surge) current following through the diode
% D1
Ipeak = Vpeak / R1

Vpeak_neg = 20
% This is b/c very little current travels through R in reverse bias.  This
% leaves very little to no voltage drop.

% Find average DC load current through R1 and power dissipated.
RL = 100
Idc = Vdc / RL

% Does 1N4001 fit in this application?
% It would work b/c this application uses less than 1 amp, less than 50
% volts and the reverse bias voltage is less than 50 V.