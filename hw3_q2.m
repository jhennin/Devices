% Use half wave rectification circuit to produce a 12V DC voltage source
% with max of 500mA of DC current (6W, 12V DC power supply)

% Vpeak = Vin - Vknee
Vpeak = 12;
Vknee = .7;
Vin = Vpeak + Vknee;
Vm = Vin

% Find peak forward surge current
% Ipeak = Vpeak / R
Ipeak = 500e-3
R = Vpeak / Ipeak

% Find peak reverse voltage
% peak reverse voltage = 20.7V

% Can you use 1N4001 for design
% Yes, b/c the circuit uses less than 1 mp, less than 50 volts, and the
% reverse bias voltage is less than 50 volts