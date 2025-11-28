DELIMITER $$
CREATE PROCEDURE `get_konobar_by_username_and_password` (in korisnicko_ime varchar(45), in korisnicka_lozinka varchar(45))
BEGIN
select Osoba_JMB,Lozinka,KorisnickoIme from konobar where KorisnickoIme = korisnicko_ime and Lozinka = korisnicka_lozinka;
END $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE `add_narudzba`(in  konobar_Osoba_JMB char(13), in sto_idStola int)
BEGIN
	insert into narudzba (Konobar_Osoba_JMB, Sto_IdStola) values (konobar_Osoba_JMB, sto_idStola);
    SELECT LAST_INSERT_ID();
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE `add_narudzba_pice`(in  idNarudzbe int, in idPica int, in cijena decimal(6,2), in kolicina int )
BEGIN
	insert into narudzba_pice(Narudzba_IdNarudzbe, Narudba_Pice_IdPica, Cijena, Kolicina) values (idNarudzbe, idPica, cijena, kolicina);
END $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE `add_narudzba_hrana`(in  idNarudzbe int, in idPica int, in cijena decimal(6,2), in kolicina int )
BEGIN
	insert into narudzba_hrana(Narudzba_IdNarudzbe, Hrana_IdHrane, Cijena, Kolicina) values (idNarudzbe, idPica, cijena, kolicina);
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE `add_racun`(in  datumIzdavanja DATE, in vrijemeIzdavanja TIME,in idNarudzbe int)
BEGIN
	insert into fiskalniracun (Datum, Vrijeme, Narudzba_IdNarudzbe ) values (datumIzdavanja, vrijemeIzdavanja, idNarudzbe);
    SELECT LAST_INSERT_ID();
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE `odnesena_narudzba_promijeni`(in id int)
BEGIN
	update narudzba set Odneseno = 1 where IdNarudzbe = id;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE `get_kuvar_by_username_and_password` (in korisnicko_ime varchar(45), in korisnicka_lozinka varchar(45))
BEGIN
select Osoba_JMB,Lozinka,KorisnickoIme from kuvar where KorisnickoIme = korisnicko_ime and Lozinka = korisnicka_lozinka;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE `update_narudzba_pice`(in  idNarudzbe int, in idPica int, nkolicina int )
BEGIN
	update narudzba_pice set kolicina=kolicina + nkolicina where Narudzba_IdNarudzbe=idNarudzbe and Narudba_Pice_IdPica= idPica ;
END $$

DELIMITER $$
CREATE PROCEDURE `update_narudzba_hrana`(in  idNarudzbe int, in idHrane int, nkolicina int )
BEGIN
	update narudzba_hrana set kolicina=kolicina + nkolicina where Narudzba_IdNarudzbe=idNarudzbe and Hrana_IdHrane= idHrane ;
END $$
















