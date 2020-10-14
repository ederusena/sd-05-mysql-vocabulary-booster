DROP PROCEDURE IF EXISTS buscar_media_por_cargo;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo
(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(E.SALARY),2)
AS 'Média Salarial'
FROM hr.employees AS E
JOIN hr.jobs AS J ON J.JOB_ID=E.JOB_ID
WHERE J.JOB_TITLE=cargo;
END $$
DELIMITER ;
