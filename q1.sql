DROP FUNCTION IF EXISTS setMVPToExecutive;

DROP VIEW IF EXISTS max_voos;
DROP VIEW IF EXISTS cliente_mvp;

CREATE VIEW max_voos AS
SELECT cv.cliente, COUNT(cv2.cliente) AS 'qtd'
FROM cliente_voo cv LEFT JOIN cliente_voo cv2
ON cv.voo = cv2.voo
GROUP BY cv.cliente;

CREATE VIEW cliente_mvp AS
SELECT mv.cliente, MAX(mv.qtd)
FROM max_voos mv;
DELIMITER //

CREATE FUNCTION setMVPToExecutive (voo INT)
RETURNS INT

BEGIN

	DECLARE cliente_procurado INT;
    DECLARE situacao_cliente VARCHAR(256);
    
    
    SET cliente_procurado = (	SELECT cliente
								FROM cliente_mvp);
                                
	SET situacao_cliente = (	SELECT cv.classe
								FROM cliente_voo cv
                                WHERE cv.cliente = cliente_procurado && cv.voo = voo);
                                
	IF situacao_cliente = 'Econômica' THEN
		UPDATE cliente_voo
		SET classe = 'Executivo'
		WHERE cliente = cliente_procurado;
	ELSE
		UPDATE milhas
        SET quantidade = quantidade*2
        WHERE cliente = cliente_procurado;
	END IF;

	RETURN cliente_procurado;

END; //

DELIMITER ;

SELECT setMVPToExecutive(3);