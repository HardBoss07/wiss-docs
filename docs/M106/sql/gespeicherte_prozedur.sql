DELIMITER //

CREATE PROCEDURE GetAlleBestellungen()
BEGIN
    SELECT * FROM Bestellungen;
END //

DELIMITER ;
