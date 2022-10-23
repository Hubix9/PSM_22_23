function rysuj_subplot(varargin) 
    liczba_wykresow = length(varargin);
    % {nazwa_wykresu, wymiary[], pozostałe argumenty do wykresu}
    for i=1:liczba_wykresow
        subplot(liczba_wykresow,1,i)

        ustawienia_wykresu = varargin{i};
        nazwa_wykresu = ustawienia_wykresu{1};

        wymiary_wykresu = ustawienia_wykresu{2};
        czas_poczatkowy = wymiary_wykresu(1);
        czas_koncowy = wymiary_wykresu(2);
        minimalna_wartosc = wymiary_wykresu(3);
        maksymalna_wartosc = wymiary_wykresu(4);
        
        
        plot(ustawienia_wykresu{3:end}); grid on;
        xline(0);
        yline(0);
        ylim([minimalna_wartosc, maksymalna_wartosc]);
        xlim([czas_poczatkowy, czas_koncowy]);
        xlabel(nazwa_wykresu);
    end
end

