function[x1,y1,ms,rc,SS]=reflejo(A1,B1,C1,x0,y0,m,S)
x1=0;
y1=0;

rc='n';
SS=1;
[A2,B2,C2]=eqrecta(x0,y0,m);
[x1,y1,rc]=corte(A1,B1,C1,A2,B2,C2);
if rc=='n'
    ms=0;
    return
else
    [rc]=sentido(x0,y0,x1,y1,S);
    if rc=='n'
        ms=0;
        return
    end
end
R=sqrt((x1-x0)^2+(y1-y0)^2);

C3=-A1*x0-B1*y0;
if B1==0
    x21=-C3/A1;
    x22=x21;
    y21=y1+sqrt(R^2-(x21-x1)^2);
    y22=y1-sqrt(R^2-(x22-x1)^2);
else
    p=A1/B1;
    q=(C3/B1)+y1;
    a=1+p^2;
    b=2*(p*q-x1);
    c=x1^2+q^2-R^2;
    x21=(-b+sqrt(b^2-4*a*c))/(2*a);
    y21=(-C3-A1*x21)/B1;
    x22=(-b-sqrt(b^2-4*a*c))/(2*a);
    y22=(-C3-A1*x22)/B1;
end
r1=distancia(x0,y0,x21,y21);
r2=distancia(x0,y0,x22,y22);
if r1<r2 
    x2=x22;
    y2=y22;
else
    x2=x21;
    y2=y21;
end
[dx,dy,ms]=pendiente(x1,y1,x2,y2);
dy=y2-y1;
dx=x2-x1;
if dy~=0
    SS=dy;
else
    SS=dx;
end
end
    
    
    


