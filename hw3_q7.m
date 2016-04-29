% Zener diode regulator circuit above a 12 volts DC voltage source, D1 is
% 1N5239 (check specs)

% What is the max possible load current that the regulator can provide?
Izmax = 50e-3
IZmin = (.25e-3 * 2)
ILoadmax = 49.5e-3

% Find resistor value (standard resistor list) and power rating for R1 to
% realize max load current.
Pload = 9.1 * .0495
PR = (12-9.1)^2 / 58
percentage = (.45 / (.45 + .145)) * 100