# Erstellung der Testdatenbanken

Die Datenbanken wurden in den folgenden Schritten erstellt:
* Export aus SchILD*zentral* in eine Accessdatenbank
* Anonymisierung mit dem aktuellen Anonymisierungstool plus folgende SQLs
  * CREATE TABLE namen (id INT, vornamem CHAR, vornamew CHAR, nachname CHAR, strasse CHAR, plz CHAR, ort CHAR )
  * INSERT INTO namen VALUES(  1, 'Andreas', 'Andrea', 'Alt', 'Akazienstr. 1', '58762', 'Altena' );
  * INSERT INTO namen VALUES(  2, 'Bernd', 'Britta', 'Becker', 'Bonner Str. 2', '44789', 'Bochum' );
  * INSERT INTO namen VALUES(  3, 'Christian', 'Christa', 'Cleve', 'Chiliweg 3', '58653', 'Coesfeld' );
  * INSERT INTO namen VALUES(  4, 'Daniel', 'Daniela', 'Dickhut', 'Dortmunder Str. 4', '44135', 'Dortmund' );
  * INSERT INTO namen VALUES(  5, 'Erwin', 'Eva', 'Eckert', 'Eichenweg 5', '45133', 'Essen' );
  * INSERT INTO namen VALUES(  6, 'Frank', 'Frauke', 'Feder', 'Flohstr. 6', '50226', 'Frechen' );
  * INSERT INTO namen VALUES(  7, 'Gerald', 'Gabi', 'Gold', 'Grenzweg 7', '58285', 'Gevelsberg' );
  * INSERT INTO namen VALUES(  8, 'Hauke', 'Heike', 'Hagen', 'Heugasse 8', '58093', 'Hagen');
  * INSERT INTO namen VALUES(  9, 'Ingo', 'Ida', 'Immel', 'Irrweg 9', '58636', 'Iserlohn' );
  * INSERT INTO namen VALUES( 10, 'Jan', 'Julia', 'Jahn', 'Jahnstr. 10', '52428', 'Jülich' );
  * INSERT INTO namen VALUES( 11, 'Klaus', 'Karla', 'Klein', 'Kohlstr. 11', '58566', 'Kierspe' );
  * INSERT INTO namen VALUES( 12, 'Ludger', 'Luisa', 'Leim', 'Langestr. 12', '57368', 'Lennestadt' );
  * INSERT INTO namen VALUES( 13, 'Markus', 'Maike', 'Maier', 'Mannweg 13', '58688', 'Menden' );
  * INSERT INTO namen VALUES( 14, 'Norbert', 'Nina', 'Nigbur', 'Normannenweg 14', '41334', 'Nettetal' );
  * UPDATE K_Lehrer SET EMailDienstlich=NULL;
  * UPDATE AllgAdrAnsprechpartner s  INNER JOIN namen n  ON n.id = (s.id * CINT(RND * 100) mod 14 + 1)  SET s.name = n.nachname, s.vorname = IIF(s.id mod 2 = 0, n.vornamem, n.vornamew), Anrede = IIF(s.id mod 2 = 0, 'Herr', 'Frau'), Telefon = '01234 5678' & STR(s.id), Email = 'mail'&RIGHT(STR(s.id),3)&'@bmail.de', Abteilung = NULL, Titel = NULL;
  * UPDATE SchuelerErzAdr s INNER JOIN namen n ON n.id = (s.id * CINT(RND * 100) mod 14 + 1)  SET Vorname1 = IIF(s.Anrede1 = 'Frau', n.vornamew, n.vornamem), Vorname2 = IIF(s.Anrede2 = 'Frau', n.vornamew, n.vornamem);
  * UPDATE eigeneschule SET webadresse = NULL;
  * UPDATE eigeneschule_abteilungen SET email = NULL, Raum = NULL, Durchwahl = NULL;
  * UPDATE k_lehrer SET DatumZugang = NULL, DatumAbgang = NULL, Titel = NULL, Faecher = NULL;
  * UPDATE k_lehrer SET Amtsbezeichnung = 'StR' WHERE Geschlecht = '3';
  * UPDATE k_lehrer SET Amtsbezeichnung = 'StR''' WHERE Geschlecht = '4';
  * UPDATE k_lehrer SET StaatKrz = '000';
  * UPDATE personengruppen SET SammelEmail = NULL, Zusatzinfo = NULL;
  * UPDATE Personengruppen_personen p  INNER JOIN namen n    ON n.id = (p.id * CINT(RND * 100) mod 14 + 1)  SET p.PersonName = n.nachname, PersonVorname = IIF(p.id mod 2 = 0, n.vornamem, n.vornamew), PersonPLZ = n.plz, PersonOrt = n.ort, PersonStrasse = n.strasse, PersonTelefon = '01234 5678' & STR(p.id), PersonMobil = NULL, PersonEmail = NULL,Bemerkung = NULL, Zusatzinfo = NULL;
  * UPDATE schueler_allgadr s  INNER JOIN namen n    ON n.id = (s.id * CINT(RND * 100) mod 14 + 1)  SET s.Ausbilder = n.nachname  WHERE Ausbilder IS NOT NULL;
  * UPDATE schuelerabgaenge SET BemerkungIntern = NULL;
  * UPDATE schuelereinzelleistungen SET Bemerkung = NULL;
  * UPDATE schuelerliste SET Erzeuger = 'admin';
  * UPDATE schuelertelefone SET Bemerkung = null;
  * DELETE FROM schuelerfoerderempfehlungen;
  * DELETE FROM schuelergsdaten;
  * DELETE FROM SchuelerKaoaDaten;
  * DELETE FROM Schuelerld_psfachbem;
  * DELETE FROM namen;
  * DROP TABLE namen;
* Öffnen der Datenbank in Access und dort unter Datenbanktools die Datenbank komprimieren, damit alle Daten (z.B.) Bilder tatsächlich raus sind.