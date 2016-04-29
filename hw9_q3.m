Cs = 4.7e-6;
Req = 200;

fL = 1 / (2*pi * Cs * Req)

As=[(Req * Cs) 1];% cS+d
Bs=[1]; % aS+b where b=0
H=tf(Bs,As);
bode(H);
grid on

fL_bode_plot = 1.06e3 / (2*pi)

fL_divide_by_10 = fL_bode_plot / 10

fL_times_10 = fL_bode_plot * 10

ff=[0 fL/10 fL fL*10 10^10]
ss=2*pi*1i*ff % s=jw=j*2*pi*f
hh=Req./(Req*Cs*ss+1) % hh -> frequency response
abs(hh) % this outouts the magnitude or abs( H(j*2*pi*f) )
angle(hh) % this outputs the angle portion of the table