CREATE VIEW `konobar_info` AS
select o.JMB, Ime, Prezime, DatumRodjenja, KorisnickoIme, Lozinka, Plata
from osoba o
inner join konobar k on o.JMB=k.Osoba_JMB;

CREATE VIEW `narudzba_detaljno`(IdNarudzbe,IdStola,Narudba_Pice_IdPica,Cijena,Kolicina) as
select n.IdNarudzbe,Sto_IdStola,Narudba_Pice_IdPica,Cijena,Kolicina from narudzba n inner join narudzba_pice np
on n.IdNarudzbe = np.Narudzba_IdNarudzbe;

CREATE VIEW `narudzba_detaljno_pice`(IdNarudzbe, Pice_IdPica,Cijena,Kolicina,Naziv) as
select n.IdNarudzbe, Narudba_Pice_IdPica,n.Cijena,n.Kolicina,Naziv from narudzba_detaljno n inner join pice p
on n.Narudba_Pice_IdPica = p.IdPica;

CREATE VIEW `narudzba_detaljno_1`(IdNarudzbe, IdStola, Hrana_IdHrane,Cijena,Kolicina) as
select n.IdNarudzbe,Sto_IdStola, Hrana_IdHrane,Cijena,Kolicina from narudzba n inner join narudzba_hrana np
on n.IdNarudzbe = np.Narudzba_IdNarudzbe;

CREATE VIEW `narudzba_detaljno_hrana`(IdNarudzbe,IdStola, Hrana_IdHrane,Cijena,Kolicina,Naziv) as
select n.IdNarudzbe, IdStola, Hrana_IdHrane,n.Cijena,n.Kolicina,Naziv from narudzba_detaljno_1 n inner join hrana p
on n.Hrana_IdHrane = p.IdHrane;






