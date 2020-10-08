SELECT job.JOB_TITLE AS 'Cargo',
    ROUND(AVG(SALARY), 2) AS 'Média salarial',
    CASE 
WHEN ROUND(AVG(SALARY)) >= 2000 AND ROUND(AVG(SALARY)) <= 5800 THEN 'Júnior'
WHEN ROUND(AVG(SALARY)) >= 5801 AND ROUND(AVG(SALARY)) <= 7500 THEN 'Pleno'
WHEN ROUND(AVG(SALARY)) >= 7501 AND ROUND(AVG(SALARY)) <= 10500 THEN 'Sênior'
WHEN ROUND(AVG(SALARY)) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS job
    INNER JOIN hr.employees AS emp
    ON job.JOB_ID = emp.JOB_ID
GROUP BY Cargo
ORDER BY 2, 1, 3;
