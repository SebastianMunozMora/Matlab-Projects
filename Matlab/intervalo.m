function[rc]=intervalo(x1,y1,x2,y2,xc,yc)
rc='n';
dx=(xc-x1)*(x2-xc);
dy=(yc-y1)*(y2-yc);
if dx>=0 && dy>=0
    rc='s';
end
end
                
            
            
            
            