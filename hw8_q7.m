Vdd = 20;
Id_on = .06;
Vgs_on = 2.8;
Vt = 2;
Av = -10;
% quiescent power < 60mW
% Vo swing at least +-2V

% Zi > 1 Mohms
% quiescent power dissipation <60mW

k = Id_on / (Vgs_on - Vt)^2

% Select the head room IdqRd>2V such |Av|>10
% IdqRd = 3V
Rd = 

Vgsq = Vg - (Idq * Rs)

Idq = k * (Vgs - Vt)^2

----------
k = Id_on / (Vgs_on - Vt)^2

Idq*Rd=4V
Idq=1mA
P=VI=(20)(1mA) = 20mW
RD=4V/1mA=4K->RD=4.3K

VDD - IDRD = Vsq + Vdsq
20V - (1mA)(4.3k)=15.7V
Vsq = 7.85V
Vdsq=7.85
Vsq=IDRS
RS=7.85V/1mA~7000K
RS=7.5K

ID=k(Vgs-Vt)^2
ID=1mA
Vt=2V
k=.09375
Vgs=1.8967V
Vgs=2.103V
Vgs>Vt

Vg=2.103V + IdqRs = 2.103V + (1mA)(7.5K)
Vg=9.60V

R1=4M
9.60328V=VDD(R2/(R1+R2))
9.60328V=20(R2/(4M+R2))
R2=3.69M -> R2=3.6M

Vg=20(3.6M/(3.6M+4M)=9.5

poly = [(k*Rs^2) -(2*k*(Vg-Vt)*Rs+1) (k*(Vg-Vt)^2)];
Idq=roots(poly)
ID = .99mA
Vgs2.075