DROP PROCEDURE IF EXISTS distanciaPiloto;

DELIMITER //

CREATE PROCEDURE distanciaPiloto (IN piloto_id DOUBLE)
	BEGIN
    
		DECLARE n DOUBLE;
        
        SET n = (	SELECT SUM(v.distancia)
					FROM voo v
                    WHERE v.piloto = piloto_id);
        
        SELECT n;
 
	END; //

DELIMITER ;

-- CALL distanciaPiloto(3);
