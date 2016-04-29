% Exercise Package 4 - Problem #1d

% Calculate Is
Tk = 273 + 25;
k = 1.38 .* power(10, -23);
Eg = 1.1 .* (1.6 .* power(10, -19));
g = 1;

Is = (Tk^(3 + (g./2))) .* exp(-Eg./(k.*Tk))
