function [ Canal ] = canal()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
global  pos bounds bounds2 bounds3
    x = pos(1); y = pos(2); 
    lx = bounds(1); ly = bounds(2);
    lw = bounds(3); lh = bounds(4);
    lx2 = bounds2(1); ly2 = bounds2(2);
    lw2 = bounds2(3); lh2 = bounds2(4);
    lx3 = bounds3(1); ly3 = bounds3(2);
    lw3 = bounds3(3); lh3 = bounds3(4);
    if x >= lx && x <= (lx + lw) && y >= ly && y <= (ly + lh)
        Canal=1;
    elseif x >= lx2 && x <= (lx2 + lw2) && y >= ly2 && y <= (ly2 + lh2)
        Canal=2;
    elseif x >= lx3 && x <= (lx3 + lw3) && y >= ly3 && y <= (ly3 + lh3)
        Canal=3;
    else
        Canal=0;
    end

end

