% Use full wave to produce 10W, 12V DC

% Vpeak = Vin - (Vknee *2)
Vpeak = 12;
Vknee = .7;
Vin = Vpeak + (Vknee*2)
% Ipeak = Vpeak / R
% R = Vpeak / Ipeak
% Ipeak * Vpeak = 10W
% Ipeak * 12 = 10W
Ipeak = 10/12
R = 72 / 5

% Max average DC supply current?
Vdc = .636 * 12;
Idc = Vdc / R

% Find Vm
Vm = Vin

% Find peak forward surge current
% Ipeak = Vpeak / R = 12 / 14.4 = 5/6 A

% Find peak reverse voltage
% Vpeak(negative)=13.4V

% Can you use 1N4001?
% Yes, b/c the forward and reverse voltages do not exceeed 50 V and the
% current is less than 1 amp.