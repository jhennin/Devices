Tk = 300;
n = 1;
q = 1.6e-19;
k = 1.38e-23;
Id_10mA = 10e-3;
Id_15mA = 15e-3;
Id_100mA = 100e-3;

Vt = k * (Tk / q);

Rd_10mA = (n * Vt) / Id_10mA
Rd_15mA = (n * Vt) / Id_15mA
Rd_100mA = (n * Vt) / Id_100mA