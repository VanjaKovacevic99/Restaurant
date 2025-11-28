CREATE DEFINER = CURRENT_USER TRIGGER `projektni_baze_2021`.`Narudzba_Pice_AFTER_INSERT` AFTER INSERT ON `Narudzba_Pice` FOR EACH ROW
BEGIN
	update pice set Pice.kolicina= Pice.kolicina - new.kolicina where Pice.IdPica= new.Narudba_Pice_IdPica;
END
