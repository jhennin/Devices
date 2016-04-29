Ri = 200;
Cb = .047e-6;
Zi = 2000;

% redraw circuit using box for Cb
% H(s) = Vi/Vin
% -> Zi / (Ri + (1/sc) + Zi)
% Get rid of (1/sc) by doing...
% -> sc/sc[Zi / (Ri + (1/sc) + Zi)]
% H(s) = (sc * Zi) / (sc(Ri + Zi) +1)

% If H(s)=0 when s=0 than it is NOT a law pass filter

% s=jw=j2pif
% |H(j2pif)| = (j2pif*c(Zi)) / (j2pif*c(Ri + Zi) +1)
% |H(j2pif)| = sqrt( (j2pif*c(Zi))^2 ) / sqrt( (j2pif*c(Ri + Zi)^2 +1^2) )
% |H(j2pif)| = (j2pif*c(Zi)) / sqrt( (j2pif*c(Ri + Zi)^2 + 1^2) ) =
% magnitude

% 1 / sqrt(2) = (j2pif*c(Zi)) / sqrt( (j2pif*c(Ri + Zi)^2 + 1^2) )
% fL = 1 / (2pi*c(Zi-Ri))

% Draw in Matlab and look for -3 magnitude
% Take the frequency and divide by 2pi

As=[Cb*(Ri+Zi) 1];% cS+d
Bs=[Zi*Cb 0]; % aS+b where b=0
H=tf(Bs,As);
bode(H);
grid on

% Frequency when magnitude = -3 is...
fL = 1.21e4 / (2 * pi)

% f=fL/10
f_divide_by_10 = fL / 10

% f=10*fL
f_times_10 = fL * 10


% Calculate the values
ff=[0 fL/10 fL fL*10 10^10]
ss=1i*2*pi*ff % s=jw=j*2*pi*f
hh = (ss .* Cb .* Zi) ./ ( (ss.*Cb).*(Ri + Zi) + 1 ) 
% hh=Req./(Req*Cs*ss+1) % hh -> frequency response
magnitude = abs(hh) % this outouts the magnitude or abs( H(j*2*pi*f) )
degrees = angle(hh) % this outputs the angle portion of the table


% Table Answers
% f=0Hz:
% |H(j2pif)| = 0
% 20log10|H(j2pif)|(dB) = -40
% arg{|H(j2pif)|}(deg) = 90
% arg{|H(j2pif)|}(rad) = pi / 2
% 
% f=fL/10
% |H(j2pif)| = 1.925e3 / 10
% 20log10|H(j2pif)|(dB) = -34.9
% arg{|H(j2pif)|}(deg) = 88.9
% arg{|H(j2pif)|}(rad) = pi / 2
% 
% f=fL
% |H(j2pif)| = 1 / sqrt(2)
% 20log10|H(j2pif)|(dB) = -3
% arg{|H(j2pif)|}(deg) = 45
% arg{|H(j2pif)|}(rad) = pi / 4
% 
% f=10fL
% |H(j2pif)| = 1.925e3 * 10
% 20log10|H(j2pif)|(dB) = -1.83
% arg{|H(j2pif)|}(deg) = 28.6
% arg{|H(j2pif)|}(rad) = pi / 6
% 
% f=10fL
% |H(j2pif)| = 1
% 20log10|H(j2pif)|(dB) = -.83 or 0
% arg{|H(j2pif)|}(deg) = 0
% arg{|H(j2pif)|}(rad) = 0
