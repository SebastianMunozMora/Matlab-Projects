function[dx,dy,m] =pendiente(xa,ya,xb,yb)
dx=xb-xa;
dy=yb-ya;
if dx==0
    if dy>0
        m=999999999;
    elseif dy<0
        m=-999999999;
    else
        m=0;
    end
else
    m=dy/dx;
end
end


        
  