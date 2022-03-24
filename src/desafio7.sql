SELECT UCASE(CONCAT(first_name,' ', last_name)) AS 'Nome completo',
jh.start_date AS 'Data de início',
e.salary AS 'Salário'
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON e.employee_id = jh.employee_id AND month(start_date) IN(1, 2, 3) 
ORDER BY `Nome completo`, `Data de início`;
