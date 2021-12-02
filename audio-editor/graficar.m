function [] = graficar(s,fsa)
%UNTITLED2 Summary of this function goes here
%   c es canal,s senal,fsa frecuencia sampleo
global gri 
    t=(0:length(s)-1)/fsa;
    plot(t,s)
    axis([0 2 -1 1])
    title('Señal en el tiempo')
    xlabel('Tiempo [s]')
    ylabel('Amplitud')
    if gri==1
        grid on
    end

