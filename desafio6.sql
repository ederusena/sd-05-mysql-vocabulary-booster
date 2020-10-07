SELECT
concat(employees.first_name, ' ', employees.last_name) AS `Nome completo`,
jobs.job_title AS 'Cargo',
job_history.start_date AS `Data de início do cargo`,
departments.department_name AS 'Departamento'
FROM hr.job_history
JOIN hr.jobs ON hr.jobs.job_id = hr.job_history.job_id
JOIN hr.employees ON hr.employees.employee_id = hr.job_history.employee_id
JOIN hr.departments ON hr.departments.department_id = hr.job_history.department_id
ORDER BY `Nome completo` DESC, Cargo;
