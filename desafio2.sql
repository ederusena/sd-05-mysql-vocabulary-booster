SELECT J.JOB_TITLE AS 'Cargo',
CASE
	WHEN J.MAX_SALARY > 5000 THEN 'Baixo'
    WHEN J.MAX_SALARY > 10001 THEN 'Médio'
    WHEN J.MAX_SALARY > 20001 THEN 'Alto'
    WHEN J.MAX_SALARY > 30000 THEN 'Altíssimo'
    ELSE 'null'
    END
 AS 'Nível' from hr.jobs AS J
 WHERE J.MAX_SALARY>5000
 ORDER BY Cargo ASC;

select * from hr.jobs AS J;


