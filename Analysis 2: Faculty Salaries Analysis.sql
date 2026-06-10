SELECT department_name,
       position,
       COUNT(*),
       COALESCE(MIN(salary),0) AS min_salary,
       COALESCE(MAX(salary),0) AS max_salary,
       COALESCE(SUM(salary),0) AS sum_salary,
       COALESCE(AVG(salary),0) AS avg_salary
FROM (
      SELECT P.id,
             CONCAT_WS(' ', P.first_name, P.last_name) AS name,
             D.department_name,
             P.position,
             P.salary
      FROM PROFESSORS P
      LEFT JOIN DEPARTMENTS D ON P.department_id = D.id 
      ) T
GROUP BY department_name, position
ORDER BY department_name DESC
