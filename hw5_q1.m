RB = 510e3;
RC = 2.7e3;
RE = 1e3;
beta = 100;
Vcc = 15;
VBE = .7

% Base:
% -Vcc + IBRB + VBE + IERE = 0
% -Vcc + IBRB + VBE + (beta*IB)RE = 0
% IBRB + beta*IB*RE = Vcc - VBE
% IB(RB + betaRE) = Vcc - VBE

% Find Icq, Vceq and Pcq
IB = (Vcc - VBE) / ( RB + beta*RE)
Icq = beta * IB
% -Vcc + Ic*RC + VCE + IE*RE
% -Vcc + Ic(RC+RE) + VCE = 0
Vceq = Vcc - Icq*(RC + RE)
Pcq = Icq * Vceq

% Find q value of Vcq and max DV voltage of swing Vc
Vc = Vcc - (Icq*RC)
Vc_swing = Icq * RC

% Find q value with 20% inc. in beta
beta_20 = 120;
IB_20 = (Vcc - VBE) / (RB + (beta_20*RE))
Icq_20 = beta_20 * IB_20
Vceq_20 = Vcc - Icq_20*(RC + RE)
% The point is in the negative voltage region and has a higher current than
% 0V

% Find max DC voltage swing Vc from Vcq with increased beta value.
Vc_20 = Vcc - (Icq_20*RC);
Max_swing = Vc_20

