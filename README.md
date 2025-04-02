# System zarządzania sklepem internetowym ze sprzętem elektronicznym

To repozytorium zawiera projekt relacyjnej bazy danych stworzonej na potrzeby zarządzania sklepem internetowym oferującym sprzedaż sprzętu elektronicznego (telefony, podzespoły komputerowe, itp.).

Celem projektu było zaprojektowanie i implementacja bazy danych, która umożliwia:
- kontrolę dostępności produktów
- minimalizację błędów podczas składania zamówień
- generowanie raportów dotyczących sprzedaży, stanu magazynowego oraz informacji o klientach i płatnościach

Projekt zawiera diagram ERD, zestaw encji i relacji, atrybuty z określonymi dziedzinami, oraz przykładowe zapytania SQL wspierające raportowanie. Baza danych wspiera pełny proces zakupowy: od dodania produktu do koszyka, przez złożenie zamówienia i dokonanie płatności, aż po realizację wysyłki.

## Zakres projektu

- Projekt encji i relacji:
  - Klient, Produkt, Kategoria, Koszyk, Płatność, Zamówienie, Wysyłka
- Zdefiniowanie związków i liczności pomiędzy encjami
- Diagram ERD bazy danych
- Identyfikacja atrybutów i dziedzin
- Projekt tabel w relacyjnej bazie danych
- Przykładowe zapytania SQL:
  - Lista produktów o niskim stanie magazynowym
  - Produkty z wybranej kategorii poniżej określonej ceny
  - Zawartość koszyka konkretnego klienta
  - Zamówienie o najwyższej wartości
  - Suma sprzedanych produktów i ich łączna wartość dla każdej kategorii

## Narzędzia

- **SQL** – projektowanie struktury bazy danych i tworzenie zapytań
- **Diagram ERD** – wizualizacja struktury danych i relacji między encjami
