START TRANSACTION;

INSERT INTO Bestellungen (kunde_id, gesamtbetrag, status) 
VALUES (101, 59.90, 'bezahlt');

UPDATE Produkte 
SET lagerbestand = lagerbestand - 1 
WHERE id = 500;

COMMIT;