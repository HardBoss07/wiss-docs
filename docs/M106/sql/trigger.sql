CREATE TRIGGER trg_vor_bestellung_insert
BEFORE INSERT ON Bestellungen
FOR EACH ROW
BEGIN
    SET NEW.erstellt_am = NOW();
    
    IF NEW.gesamtbetrag < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Betrag darf nicht negativ sein';
    END IF;
END;