SELECT job_title 
AS 'Cargo',
CASE
	WHEN min_salary >= 5000 AND max_salary <= 10000 THEN 'Baixo'
    WHEN min_salary >= 5000 AND max_salary <= 10000 THEN 'Médio'
    WHEN min_salary >= 5000 AND max_salary <= 10000 THEN 'Alto'
    ELSE 'Altíssimo'
END AS 'Nível'
FROM hr.jobs;