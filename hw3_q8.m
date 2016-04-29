% A sensors uses 3V voltage and draws 30mA when the device is taking
% measurement and 2mA when the device is in idle.

% Vin = 4.5 to 12
Vz = 3;
Imin = 1e-3
IZmax = 152e-3

% Find range of values for R1 that will work for design.  Pick a resistor
% value that provides the best efficiency for the regulator.
% (Vinmax - Vz) / R >= ILoadmax + Imain
% (Vimin - Vz) / R <= Iloadmin + Izmax

% (Vinmax - Vz) / (Iloadmax + Imain) >= R >= (Vinmin - Vz) / (Iloadmin + Izmax)
% 290 >= R>= 10
% R = 290
% 270 ohm is the most efficient becuase it is a higher resistance which
% draws less current.  It is also a standard resistor value.

% What is the percentage efficiency with your selection of R1 value?
Pres_max = (12-3)^2 / 270
Pload_max = 3 * 30e-3
Max_perc = (Pload_max / (Pload_max + Pres_max)) * 100
Pres_min = (4.5 - 3)^2 / 270
Pload_min = 3 * .002
Min_perc = Pload_min / (Pload_min + Pres_min) * 100
% @ max setting the efficiency is Max_perc
% @ min setting the efficiency is Min_perc

% What is the max possible current flowing through D1 Does 1N5225 fit?
% When the sensor is in the idle mode it will only draw 2mA away from the
% diode.  At max voltage 33mA will be supplied to the diode and the load.
% If the load only draws 2mA that leaves 31mA flowing through diode

% The max current for the diode is 152mA so 31mA will not harm the 1N5225
% diode.

% What is the maintenance current of D1 when sensor is taking measurement?
% The maintenance current for the 1N5225 is 1mA as per this design.

% What is the required power rating of R1?
% The max power going through R is .3W. So, the resistor can have a power
% rating of .5 watt or higher.