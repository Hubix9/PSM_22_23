% Poniższa funkcja zwraca tablicę dwuwymiarową zawierającą próbki audio
% (liczba kolumn tej tablicy odpowiada liczbie kanałów audio wczytanego
% pliku) oraz częstotliwość próbkowania audio

% Jako nazwę pliku wstawiacie wasz plik, żeby nie męczyć się ze
% ścieżkami polecam przekopiować go sobie do tego samego folderu co skrypt

[sampled_data, sample_rate] = audioread("Odliczanie_31.mp3"); 

% Poniższy komentarz dotyczy specyficznego przypadku gdy przetwarzany plik
% audio jest stereo

% Obcinam jeden z kanałów audio żeby przerobić stereo na mono
% Bez tego detectSpeech się wykolei bo
% przyjmuje tylko jedno kolumnowe tablice

% Instrukcja jakas_tablica(:,1) sprawia
% że tworzę nową tablicę w której będą
% zawarte wszystkie rzędy tablicy "jakas_tablica"
% (znak ":" oznacza wszystkie indeksy danego wymiaru)
% ale tylko dla pierwszej kolumny (stąd jedynka jako drugi parametr operacji)
% jako parametry można również wprowadzać zakresy
% jakas_tablica(:,1:2) dałoby tablicę zawierającą wszystkie rzędzy i
% kolumny 1 i 2 tablicy jakas_tablica

sampled_data = sampled_data(:,1); 

sampled_data = sampled_data(1:end); % Wybieram wszystkie próbki audio odczytane z pliku (od 1 do końca)

detectSpeech(sampled_data, sample_rate); % Jako parametry przekazuję zmodyfikowaną tablicę zawierającą próbki audio oraz częstotliwość próbkowania dźwięku
