Id_on = .06;
Vgs_on = 2.6;
Vt = 1.8;
Vdd = 15;
% Zi > 1Mohms
% Zo < 300
% quiescent power dissipation < 50mW

k=Ids_on/(Vgs_on - Vt)^2
k=60mA/(2.6V-1.8V)^2 = .09375

IdqRs=5V
Idq=2mA
Rs=5V/2mA=2.5k -> Rs=2.7k

Id=k(Vgs-Vt)^2
Id=2mA
k=.09375
Vt=1.8V
Vgs=1.654
Vgs>Vt -> Vgs=1.946

Vg=Vgs+IdqRd=1.946V+(2mA)(2.7K)=7.346

7.346V=15V(R2/(R1+R2))
R1=4M
7.346V=15V(R2/(4M+R2))
R2 = 3.84
R2 = 3.9M

poly = [(k*Rs^2) -(2*k*(Vg-Vt)*Rs+1) (k*(Vg-Vt)^2)];
Idq=roots(poly)
Idq=2.06mA, 2.01mA
Vgs=Vg-IdqRs
Vgs=1.784V

gm=2K(Vgs-Vt)=22.3mS
Zo=Rs//(1/gm) = 44.1

AV=- (gmRd)/(1+gmRs')
gm=2K(Vgs-Vt)=2(.0937)(2.1V-2)
gm=18.75

-10=-(gmRd)/(1+gmRs') -> -(18.75mS*4.3K)/(1+(18.75*Rs')
Rs'=360

-( (Vdd-abs(Vt))/RD - Idq)Rd <= Vo <= IdqRd
-13.7V <= Vo <= 4.3V


