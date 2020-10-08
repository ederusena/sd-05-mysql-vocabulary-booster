USE hr
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN trampo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(emp.SALARY), 2) AS 'Média salarial'
FROM hr.employees AS emp
INNER JOIN hr.jobs AS job
ON emp.JOB_ID = job.JOB_ID
WHERE job.JOB_TITLE = trampo;
END 
$$ DELIMITER ;
