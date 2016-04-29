Id_on = .06;
Vgs_on = 2.6;
Vt = 1.8;
% Zi > 1Mohms
% Av ~ -20
% quiescent power dissipation < 50mW
% Vdd from 20V - 25V

k = Id_on / (Vgs_on - Vt)^2
k=60mA/(2.6V-1.8V)^2 = .09375
Vdd=20V
Idq=2mA
P=VI=(20V)(2nA)=40mW

IdqRD=5V
RD=5V/2mA=2.5K -> RD=2.7K

Vdd-IdRD=Vsq+Vdsq
20V-(2mA)(2.7k)=Vsq+Vdsq
14.6V=Vsq+Vdsq
Vsq=7.3V
Vdsq=7.3V

Vsq=IdRs -> Vsq/Id = Rs ->7.3V/2mA = 3650

Id=k(Vgs-Vt)^2
Vgs=1.6539V
Vgs<Vt
Vgs=1.946