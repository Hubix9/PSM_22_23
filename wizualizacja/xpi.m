% Autor: Krzysztof S.


function x=xpi(t,a,t0,T)

Nt=length(t); % dlugosc wektora z próbkami

x=ones(1,Nt)*a; % wypelnienie wektora jedynkami*amplituda

x((t<t0-T/2)|(t>t0+T/2))=0; % nieinteresujacy nasz przedzial zerujemy

x((t>=t0-T/2)&(t<=t0-T/2))=a/2; % punkty przeskoku w polowie amplitudy
x((t>=t0+T/2)&(t<=t0+T/2))=a/2;
