SELECT CONCAT(first_name,' ', last_name) AS 'Nome Completo',
j.job_title AS 'Cargo',
jh.start_date AS 'Data de início do cargo',
d.department_name AS 'Departamento'
FROM hr.job_history AS jh
INNER JOIN hr.employees as e
ON jh.employee_id = e.employee_id
INNER JOIN hr.jobs AS j
ON jh.job_id = j.job_id
INNER JOIN hr.departments AS d
ON jh.department_id = d.department_id
ORDER BY `Nome Completo` DESC, Cargo;