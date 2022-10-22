% Autor: Krzysztof S.


clc; clear; close all;

%wykres view setup (granice okienka)
l_krawedz = -4; 
p_krawedz = 4;
g_krawedz = 1.5;
d_krawedz = -1.5;

% dziedzina wykresu
cz_probkowania = 1/10000;  %to sie chyba nazywa czestotliwosc probkowania xd  
t = l_krawedz : cz_probkowania : p_krawedz; %zeby program wiedzial zakres dziedziny


subplot(3,1,1) %3 rzedy, 1 kolumna, wykres 1
    amplituda = 1; %default = 1
    opoznienie = 1/2; %default = 0
    wydluzenie = 1; %default = 1 
    
    x1 = xpi(t, amplituda, opoznienie, wydluzenie); 
    % amplituda * PI((t - opoznienie) / wydluzenie)
    
        %wykresu rysowanko
        plot(t, x1, 'b-square'); grid on;
        xline(0);
        yline(0);
        xlim([l_krawedz p_krawedz])
        ylim([d_krawedz g_krawedz])

subplot(3,1,2) %3 rzedy, 1 kolumna, wykres 2
    amplituda = 1; %default = 1
    opoznienie = -1/2; %default = 0
    wydluzenie = 1; %default = 1
    
    x2 = xpi(t, amplituda, opoznienie, wydluzenie); 
    % amplituda * PI((t - opoznienie) / wydluzenie)
    
        %wykresu rysowanko
        plot(t, x2, 'r-square'); grid on;
        xline(0);
        yline(0);
        xlim([l_krawedz p_krawedz])
        ylim([d_krawedz g_krawedz])

subplot(3,1,3) %3 rzedy, 1 kolumna, wykres 3
    
    %dzialanie jakie chcemy wykonac tu (mnozenie -> .* !!)
    x3 = x1+x2;
   
        %wykresu rysowanko
        plot(t, x3, 'g-square'); grid on;
        xline(0);
        yline(0);
        xlim([l_krawedz p_krawedz])
        ylim([d_krawedz g_krawedz])

