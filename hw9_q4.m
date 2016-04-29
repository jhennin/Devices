Cs = 1e-6;
Req = 500;

fL = 1 / (2*pi * Cs * Req)

As=[(Req * Cs) 1];% cS+d
Bs=[1]; % aS+b where b=0
H=tf(Bs,As);
bode(H);
grid on

fL_bode_plot = 1.06e3 / (2*pi)

fL_divide_by_10 = fL_bode_plot / 10

fL_times_10 = fL_bode_plot * 10