DROP PROCEDURE IF EXISTS addMilhas;

DELIMITER //

CREATE PROCEDURE addMilhas (IN cliente_id DOUBLE)
	BEGIN
    
		DECLARE n DOUBLE;
        
        UPDATE milhas
        SET quantidade = quantidade + 1000
        WHERE cliente = cliente_id;
        
        SELECT cliente, quantidade
        FROM milhas
        WHERE cliente = cliente_id;
 
	END; //

DELIMITER ;

-- CALL addMilhas(2);