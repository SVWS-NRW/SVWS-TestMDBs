# Erstellung der Testdatenbanken

Die Datenbanken wurden in den folgenden Schritten erstellt:
* Export aus SchILD*zentral* in eine Accessdatenbank
* Anonymisierung mit dem aktuellen Anonymisierungstool plus folgende SQLs
  * Update K_Lehrer set EMailDienstlich=NULL;
  * Update AllgAdrAnsprechpartner set Name = 'Nachname' & Str(id), Vorname = 'Vorname' & Str(id), Anrede = IIF(id mod 2 = 0, 'Herr', 'Frau'), Telefon = '01234 5678' & Str(id), Email = 'mail'&right(Str(id),3)&'@bmail.de', Abteilung = null, Titel = null;
  * Update eigeneschule set webadresse = null;
  * Update eigeneschule_abteilungen set email = null, Raum = null, Durchwahl = null;
  * Update k_lehrer set DatumZugang = null, DatumAbgang = null, Titel = null, Faecher = null;
  * Update k_lehrer set Amtsbezeichnung = 'OStR' where Geschlecht = '3';
  * Update k_lehrer set Amtsbezeichnung = 'OStR''' where Geschlecht = '4';
  * Update k_lehrer set StaatKrz = '000';
  * Update personengruppen set SammelEmail = null, Zusatzinfo = null;
  * Update Personengruppen_personen set PersonName = 'Nachname' & Str(id), PersonVorname = 'Vorname' & Str(id), PersonPLZ = '01234', PersonOrt = 'Ort' & Str(id), PersonStrasse = 'Straße' & Str(id),PersonTelefon = '01234 5678' & Str(id), PersonMobil = null, PersonEmail = null,Bemerkung = null, Zusatzinfo = null;
  * Update schueler_allgadr set Ausbilder = null;
  * Update schuelerabgaenge set BemerkungIntern = null;
  * Update schuelereinzelleistungen set Bemerkung = null;
  * Delete from schuelerfoerderempfehlungen;
  * Delete From schuelergsdaten;
  * Delete from SchuelerKaoaDaten;
  * Delete from Schuelerld_psfachbem;
* Öffnen der Datenbank in Access und dort unter Datenbanktools die Datenbank komprimieren, damit alle Daten (z.B.) Bilder tatsächlich raus sind.