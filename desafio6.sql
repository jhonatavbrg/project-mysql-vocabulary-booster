SELECT CONCAT(first_name,' ', last_name) AS 'Nome Completo',
j.job_title AS 'Cargo',
e.hire_date AS 'Data de início do cargo',
d.department_name AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON j.job_id = e.job_id
INNER JOIN hr.departments AS d
ON d.department_id = e.department_id
GROUP BY `Nome Completo`
ORDER BY `Nome Completo` DESC, Cargo ASC;