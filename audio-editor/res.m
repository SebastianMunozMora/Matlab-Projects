function [] = res(fs1,fs2)
%r Summary of this function goes here
%   Detailed explanation goes here
global senal1 senal2 Fs1 Fs2 tiempo1 tiempo2
if fs1<fs2
    [P,Q] = rat(Fs2/Fs1);
    abs(P/Q*Fs1-Fs2)
    senal1=resample(senal1,P,Q);
    Fs1=Fs2;
end
if fs2<fs1
    [P,Q] = rat(Fs1/Fs2);
    abs(P/Q*Fs2-Fs1)
    senal2=resample(senal2,P,Q);
    Fs2=Fs1;
end


