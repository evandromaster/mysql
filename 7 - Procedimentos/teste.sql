
DELIMITER //

CREATE FUNCTION teste6 (X INT)
RETURNS INT NOT DETERMINISTIC
BEGIN
	
    RETURN (SELECT '15') - X;
END//

DELIMITER ;

SELECT teste5(5);