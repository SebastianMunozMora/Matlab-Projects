function[rc]=sentido(x1,y1,x2,y2,S)
dx=x2-x1;
dy=y2-y1;
if abs(dy)>0.00000001
    if dy*S>0
        rc='s';
    else
        rc='n';
    end
else
    if dx*S>0
        rc='s';
    else 
        rc='n';
    end
end
end
        
