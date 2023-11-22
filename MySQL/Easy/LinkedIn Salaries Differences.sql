SELECT ABS(MAX(CASE 
                 WHEN dept.department = 'marketing' THEN emp.salary 
                 ELSE 0 
               END) - 
           MAX(CASE 
                 WHEN dept.department = 'engineering' THEN emp.salary 
                 ELSE 0 
               END)) AS sal_diff
FROM db_employee emp 
JOIN db_dept dept 
ON emp.department_id = dept.id
