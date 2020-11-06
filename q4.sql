DROP PROCEDURE IF EXISTS eVeterano;

DELIMITER //

CREATE PROCEDURE eVeterano (IN piloto_id DOUBLE)
	BEGIN
    
		DECLARE n DOUBLE;
        DECLARE s VARCHAR(256);
        
        SET n = (	SELECT num_voos
					FROM piloto
                    WHERE codigo = piloto_id);
                    
		IF n > 1000 THEN
			SET s = 'É veterano!';
            
		ELSE
			SET s = 'Não é veterano.';
            
		END IF;
        
		SELECT s;
        
	END; //

DELIMITER ;

-- CALL eVeterano(4);