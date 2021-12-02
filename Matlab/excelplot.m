function [] = excelplot(nombrearchivo)
a=xlsread(nombrearchivo);
d=a(:,1); e=a(:,2);
d=d';
e=e';
npuntos=size(d);
nbarreras=npuntos(1,2)-1;
for i=1:nbarreras
    x(i,1)=d(i);
    y(i,1)=e(i);
    x(i,2)=d(i+1);
    y(i,2)=e(i+1);
end
x0=input('ingrese el punto en x de inicio de la señal: ');
y0=input('ingrese el punto en y de inicio de la señal: ');
a0=input('ingrese la direccion de la señal: ');
nreflex=input('ingrese el numero de reflexiones: ');
a1=a0*pi/180;
if a0==90
    m=999999999;
elseif a0==270
    m=-999999999;
else
    m=tan(a1);
end
if a0==180
    S=-1;
elseif a0==0 || a0==360
    S=1;
else
    S=sin(a1);
end
nreflex=nreflex+1;
kk=0;
for i=1:nreflex
    dmin=0;
    k=0;
   
    for j=1:nbarreras
        if j~=kk;
            [dx,dy,mx]=pendiente(x(j,1),y(j,1),x(j,2),y(j,2));
            [A1,B1,C1]=eqrecta(x(j,1),y(j,1),mx);
            [x1,y1,mx,rc,SS]=reflejo(A1,B1,C1,x0,y0,m,S);
            if rc=='s'
                [rc]=intervalo(x(j,1),y(j,1),x(j,2),y(j,2),x1,y1);
                if rc=='s'
                    [dx]=distancia(x0,y0,x1,y1);
                    if dx>0
                        if k==0
                            k=j;
                            dmin=dx;
                        else
                            if dx<dmin
                                k=j;
                                dmin=dx;
                            end
                        end
                    end
                end
            end
        end
    end
    if k>0
        [dx,dy,mx]=pendiente(x(k,1),y(k,1),x(k,2),y(k,2));
        [A1,B1,C1]=eqrecta(x(k,1),y(k,1),mx);
        [x1,y1,mx,rc,SS]=reflejo(A1,B1,C1,x0,y0,m,S);
         hold on
         line([x0,x1],[y0,y1])
         kk=k;

         x0=x1;
         y0=y1;
         m=mx;
         S=SS;
    end
end
plot(d,e,'r');
axis('equal');
end
    
         


        
    
    
    
    

    
