# 🎓 System bazodanowy do zarządzania uczelnią

## 📌 Założenia

System obsługuje:
- Dane osobowe studentów i pracowników
- Oceny, frekwencje i logowania studentów
- Informacje o opłatach i podaniach
- Przedmioty, kierunki, wydziały i przypisane sale
- Dane o wykładowcach i prowadzonych zajęciach

## 👥 Role użytkowników

### Zarząd uczelni
- Pełen wgląd w dane studentów i pracowników
- Dodawanie/usuwanie studentów
- Dostęp do aktywności i logowań studentów
- Przegląd opłat i podań

### Wykładowcy
- Zarządzanie ocenami i frekwencją
- Dostęp do przedmiotów, sal i budynków
- Informacja o typie zajęć (wykład, lab, projekt)

### Studenci
- Wgląd do ocen, opłat i podań przez konto uczelniane
- Informacje o przedmiotach, kierunku i specjalności
- Przypisane sale i budynki

## 🗃️ Dane w bazie
- Studenci: dane osobowe, oceny, obecność, opłaty, podania, przypisane przedmioty, obecny semestr, zgłoszenia
- Pracownicy: dane osobowe, pensje, tytuł, przypisane przedmioty
- Struktura uczelni: kierunki, specjalności, przedmioty, wydziały, pokoje
- zKategorie zajęć: wykład, laboratorium, projekt

## ⚙️ Generowanie danych
Dane zostały wygenerowane za pomocą:
- mockaroo.com
- Skryptów Python
Założenia generowanych danych:
- Rok akademicki: start 01.09.2018
- Studenci na ostatnim roku (4-letnie studia)
- Każdy ma 1 konto, 1 kierunek, 4 przedmioty
- 10 przedmiotów, każdy z 4 kategoriami
- Przedmiot przypisany do 1 pokoju
- Kierunek może mieć wiele specjalności

## 🧩 Diagram ERD
![Diagram](https://github.com/Verthie/Projekt-relacyjnej-bazy/assets/47531645/341c0cc0-95ef-4805-bfc5-d13d444c2bf9)

## 📊 Raporty i zestawienia
- Lista pracowników i ich pensji
- Studenci z największą liczbą ocen dostatecznych
- Najwyższe średnie końcowe
- Studenci z nieuregulowanymi opłatami
- Frekwencja procentowa na wybranym przedmiocie
- Lista ocen i średnich
- Status zaliczeń
- Lista kierunków i specjalności
- Studenci według kierunku i logowania
- Ilość podań, suma ocen, suma opłat
- Średnie z lat
- Państwa pochodzenia studentów i pracowników
- Wydziały z dużą liczbą studentów
