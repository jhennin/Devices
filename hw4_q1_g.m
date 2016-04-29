VBE = .65;
ICBO = 50 .* power(10, -9);
n = 1;
VT = 60;

IB = ICBO .* ( (VBE ./ (exp(n .* VT))) - 1)