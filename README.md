# Projekt systemu bazodanowego do zarządzania szkołą

## Założenia projektu
Tematem projektu jest system bazodanowy do obsługi uczelni
- Baza danych zawierać będzie dane osobowe studentów oraz wykładowców
- Umożliwi sprawdzenie aktywności studentów w tym: oceny, frekwencje, ostatni czas logowania do strony uczelnianej
- Pozwoli na sprawdzenie opłat oraz podań złożonych przez studentów, studenci będą mieli dostęp do tych informacji za pośrednictwem ich szkolnego konta
- W systemie tym zawarta będzie całkowita frekwencja jak i oceny studenta na poszczególnych zajęciach
- Umożliwi dostęp do danych odnośnie, zajęć prowadzonych przez wykładowców takich jak numer pokoju oraz nazwa przedmiotu
- Pozwoli na wgląd do poszczególnych wydziałów i sprawdzenie przynależności do wydziału każdego studenta jak i pracownika
- Umożliwi sprawdzenie, do którego kierunku należy student oraz jego oceny w aktualnym semestrze, a także oceny końcowe z poprzednich semestrów

## Użytkownicy systemu bazodanowego
Na podstawie założeń tego systemu 3 grupy uzyskają dostęp do bazy danych w określonym zakresie:
- Zarząd uczelni
  - Otrzyma wgląd do danych osobowych uczęszczających studentów oraz pracowników
  - Posiadał będzie możliwość dodawania nowych studentów, usuwania ich z listy uczęszczających, oraz sprawdzania danych odnośnie ich aktywności i kierunku, na który uczęszczają
  - Będzie miał wgląd do kont uczelnianych studentów co pozwoli na sprawdzenie ich podań, opłat oraz czas ostatniego logowania
- Wykładowcy
  - Będą mogli dodawać oraz modyfikować oceny studentów, zarządzać aktywnością oraz obecnością studenta
  - Zarówno wykładowcy jak i studenci otrzymają wgląd do przedmiotów, przypisanych im sal oraz numer budynku, na którym znajduje się ich wydział
  - Uzyskają możliwość sprawdzania przedmiotów i do jakiego typu należą spośród trzech: wykład, laboratorium, projekt
- Studenci
  - Dostaną możliwość wglądu i tworzenia części danych znajdujących się w bazie poprzez konto uczelniane
  - Po zalogowaniu się na stronę otrzymąją wgląd do swoich ocen końcowych, do tworzenia skarg oraz podań, a także sprawdzania informacji dotyczących opłat na wydatki uczelniane typu czesne lub opłata za legitymacje
  - Otrzymają dostęp do informacji odnośnie ich aktualnego kierunku, przedmiotów, specjalizacji oraz przypisane im zajęcia
  - Uzyskają wgląd do przedmiotów, przypisanych im sal oraz numer budynku, na którym znajduje się ich wydział

## Dane
Dane znajdujące się w bazie:
- Informacje o danych osobowych, ocenach, aktywności, obecności, przedmiotach, kierunkach, semestrze na którym obecnie się znajdują, a także zgłoszeniach i opłatach studentów
- Informacje o pracownikach uczelni, informacja o posadzie, tytuł oraz przypisane im przedmioty do nauczania
- Informacje o kierunkach, specjalnościach, przedmiotach znajdujących się na kierunku, pokoje w których są prowadzone oraz typ zajęć
- Informacje o wydziałach i katedrach w tym: budynki które przypisane są danemu wydziałowi, studenci uczęszczający na dany wydział, kierunki należące do danych wydziałów, pracownicy należący do danej katedry

## Raporty i zestawienia
Raporty i zestawienia sporządzone na podstawie utworzonej bazy:
- Lista pracowników i ich pensji
- Lista studentów z największą ilością ocen dostatecznych w obecnym roku szkolnym
- Wyświetlanie najwyższych nie powtarzających się średnich końcowych ze wszystkich lat
- Wyświetlanie numerów albumu z konkretnego przedziału
- Tworzenie ciągu reprezentującego nazwę przedmiotu i przypisanego pokoju, w którym jest wykładany
- Lista studentów z nieuregulowanymi opłatami
- Wyświetlanie procentowej frekwencji każdego studenta na wybranym przedmiocie
- Wyświetlanie wszystkich ocen wszystkich uczniów oraz ich średnią końcową
- Lista statusu zaliczeń studentów z każdego przedmiotu na ich kierunku
- Lista wszystkich kierunków i specjalności jakie oferują
- Wyświetlanie wszystkich studentów i wytypowanie tych znajdujących się na wybranym kierunku
- Lista uczniów którzy ostatni raz zalogowali się do swojego konta przed wybraną godziną
- Wyświetlanie listy studentów i przypisanie każdemu ich numeru albumu
- Wyświetlanie ilości podań złożonych przez każdego ucznia
- Wskazanie ucznia z największą ilością oraz sumą nieuregulowanych opłat
- Lista studentów których suma ocen jest większa od wskazanej liczby
- Lista studentów których suma opłat przekracza wybraną liczbę
- Wyświetlanie średnich ze wszystkich średnich uczniów w wskazanych latach
- Lista państw, z których pochodzą zarówno studenci jak i pracownicy
- Wyświetlanie średniej z wszystkich srednich uzyskanych przez uczniów w wybranym roku
- Lista wydziałów, w których ilość uczęszcząjących studentów jest większa od wskazanej liczby

## Diagram
![Diagram](https://github.com/Verthie/Projekt-relacyjnej-bazy/assets/47531645/341c0cc0-95ef-4805-bfc5-d13d444c2bf9)

## Tabele, kolumny oraz liczba rekordów
W bazie znajduje się 20 połączonych relacyjnie tabel.  
Poniżej zaprezentowana jest lista wszystkich tabel wraz z kolumnami oraz ilością rekordów:
- dbo.Studenci [studid, imie, nazwisko, dataurodzenia, panstwo, numertelefonu, wydzialid, kierunekid] - 500 rekordów
- dbo.Pracownicy [pracownikid, imie, nazwisko, tytul, dataurodzenia, datazatrudnienia, panstwo, numertel, pensja, wydzialid, przedmiotid] - 150 rekordów
- dbo.Wydzialy [wydzialid, nazwawydzialu] - 6 rekordów
- dbo.NumerBudynku [budynekid, numerbudynku, wydzialid] - 6 rekordów
- dbo.Kierunki [kierunekid, nazwakierunku] - 7 rekordów
- dbo.Specjalnosci [specjalnoscid, nazwaspecjalnosci, kierunekid] - 10 rekordów
- dbo.Przedmioty [przedmiotid, nazwaprzedmiotu, kierunekid] - 28 rekordów
- dbo.KategoriePrzedmiotu [nazwakategorii, przedmiotid] - 112 rekordów
- dbo.Pokoj [pokojid, numerpokoju, przedmiotid] - 28 rekordów
- dbo.Oceny [ocenaid, ocena, studid, przedmiotid] - 2000 rekordów
- dbo.RodzajOceny [nazwarodzaju, ocenaid] - 2000 rekordów
- dbo.SredniaKoncowa [srednia, rokid] - 1500 rekordów
- dbo.PoprzednieRokiSzkolne [rokid, rok, studid] - 1500 rekordów
- dbo.NumeryAlbumu [numeralbumu, studid] - 500 rekordów
- dbo.Frekwencja [obecnoscid, iloscwszystkichgodzin, iloscnieobecnosci, studid, przedmiotid] - 2000 rekordów
- dbo.Konta [email, ostatnielogowanie, studid] - 500 rekordów
- dbo.Oplaty [oplataid, wysokoscoplaty, dataoplacenia, studid] - 700 rekordów
- dbo.Podania [podanieid, datazlozenia, studid] - 300 rekordów
- dbo.TypOplaty [typopid, nazwa, oplata] - 700 rekordów
- dbo.TypPodania [typpoid, nazwa, podanieid] - 300 rekordów

## Generowanie danych
Dane wykorzystane w bazie zostały wygenerowane przy wykorzystaniu:
- strony internetowej www.mockaroo.com - do generowania danych losowych
- języka programowania python - do generowania danych spójnych między poszczególnymi tabelami

Podczas generowania danych do systemu zarządzania uczelnią kierowałem się podanymi założeniami:
- Aktualny rok szkolny rozpoczął się 1 września 2018 roku
- Wszyscy studenci zaczęli studiować od tego samego roku, a czas ukończenia studiów trwa 4 lata, obecnie znajdują się na ostatnim roku studiów
- Dane z poprzednich roków szkolnych w połączeniu z danymi średnich końcowych umożliwiają jedynie na wgląd do oceń końcowych ucznia z trzech poprzednich lat
- Każdy uczeń ma przypisane jedno konto uczelniane, jeden numer albumu, jeden kierunek oraz 4 przedmioty
- Na uczelni wykładane jest 10 przedmiotów
- Kierunek może nie mieć żadnej specjalności oraz mieć więcej niż jedną
- Każdy pokój ma przypisany 1 przedmiot, który jest w nim prowadzony
- Każdy przedmiot posiada po cztery kategorie: wykład, ćwiczenia, laboratorium, projekt
- Każdy student jak i pracownik przydzielony jest do jednego wydziału
