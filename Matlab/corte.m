function[xc,yc,rc]=corte(A1,B1,C1,A2,B2,C2)
Dn=A1*B2-A2*B1;
if Dn~=0
    xc=(-C1*B2+C2*B1)/Dn;
    yc=(-A1*C2+A2*C1)/Dn;
    rc=('s');
else
    rc=('n');
    xc=0;
    yc=0;
end
end
    