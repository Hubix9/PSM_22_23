function rysuj_wykres(varargin)
    wymiary_wykresu = varargin{1};
    czas_poczatkowy = wymiary_wykresu(1);
    czas_koncowy = wymiary_wykresu(2);
    minimalna_wartosc = wymiary_wykresu(3);
    maksymalna_wartosc = wymiary_wykresu(4);
    plot(varargin{2:end});
    xline(0);
    yline(0);
    ylim([minimalna_wartosc, maksymalna_wartosc]);
    xlim([czas_poczatkowy, czas_koncowy]);
end

