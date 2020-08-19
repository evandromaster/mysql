delimiter //
CREATE PROCEDURE simpleproc ()
BEGIN
    SELECT COUNT(NATCODIGO) FROM bos;    
    SELECT * FROM bos;
END//

delimiter ;

CALL simpleproc();

-- remver procedure:
-- drop procedure simpleproc;

