CREATE OR REPLACE VIEW Sicht_Offene_Bestellungen AS
SELECT id, kunde_id, datum, gesamtbetrag
FROM Bestellungen
WHERE status = 'offen';