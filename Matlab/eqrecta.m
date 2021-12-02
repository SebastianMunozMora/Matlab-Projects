function[A,B,C]=eqrecta(xa,ya,m)
if abs(m)>=999999999
    A=1;
    B=0;
    C=-xa;
else
    A=m;
    B=-1;
    C=ya-m*xa;
end
end
    