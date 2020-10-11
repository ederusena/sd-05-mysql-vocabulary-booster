-- Crie uma procedure chamada buscar_media_por_cargo que recebe como parâmetro o nome de um cargo
-- e em retorno deve mostrar a média salarial de todas as pessoas que possuem esse cargo.
-- Usando o banco hr como referência, sua procedure deve retornar somente uma coluna, com o alias "Média salarial",
-- que mostra a média salarial arredondada para duas casas decimais.
-- Confirme a execução correta da procedure, chamando-a e passando o nome de cargo igual a "Programmer":
-- CALL buscar_media_por_cargo('Programmer');
-- Chamando-a dessa forma, sua procedure deve retornar 5760.00 como média salarial para pessoas que 
-- ocupam o cargo "Programmer".

USE hr;

DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN title VARCHAR(100))
BEGIN
	SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
	FROM hr.employees AS e
	JOIN hr.jobs AS j
    ON j.JOB_TITLE = title AND j.JOB_ID = e.JOB_ID;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
