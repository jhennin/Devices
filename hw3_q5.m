% D1 and D2 are both 1N4001
R = 1e3;
RL = 4e3;

% Vin=0.5cos(200pit+1)
% .5 V is not high enough for diodes to function properly (.7V)

% voltage divider:
Vin = .5;
Vo = (RL / (RL + R)) * Vin
% Plug in Vo result to eq below
% Vo = .4cos(200pit+1)

% Vin=10V
Vin = 10;
% 10V is sufficient for diodes to work properly (0.7V), so Vo = .7V

% Vin=-3V
% Vo is -0.7V b/c the bias is reversed, but diodes can still function
% properly.

% Vin=2+0.5cos(200pit+1)
% 2.5V and 1.5V are both acceptable voltages for the diodes to function
% properly (0.7V).  
% Therefore, Vo=0.7cos(200pit+1)

% Vin=100V
% This input voltage exceeds the max reverse bias voltage for 1N4001
% diodes.  The diodes will not work in this situation so Vo=80V if both
% diodes are destroyed by the voltage.

% What is the limit of input voltages for the protection circuit to work?
% True input voltage cannot be higher than 50V or the diodes will burn up.
