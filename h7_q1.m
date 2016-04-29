function [ id, vd, vs, vds ] = idJFET(Rs, Rd, Rg, Vp, Vg, Idss)

poly = [(Rs^2) (2*(Vp-Vg)*Rs-(Vp^2/Idss)) ((Vp-Vg)^2)];

id=roots(poly);

vd = 15-id*Rd;

vs=id*Rs;

vds=vd-vs;

end