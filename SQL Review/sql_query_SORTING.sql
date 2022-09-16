-- B. SQLite Restricting and Sorting Data 

-- 1. Write a query to display the names (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000.
--SELECT first_name, last_name, salary FROM employees WHERE salary < 10000 or salary > 15000;
-- 2. Write a query to display the names (first_name, last_name) and department ID of all employees in departments 30 or 100 in ascending alphabetical order by department ID. 
--SELECT first_name, last_name, department_id FROM employees WHERE department_id>30 and department_id<100 ORDER BY department_id, first_name;
-- 3. Write a query to display the names (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100.
--SELECT first_name, last_name, salary FROM employees WHERE (salary < 10000 or salary > 15000) and (department_id>30 and department_id<100);
-- 4. Write a query to display the first_name of all employees who have both an "b" and "c" in their first name.
--SELECT first_name FROM employees WHERE LOWER(first_name) LIKE '%b%' AND LOWER(first_name) LIKE '%c%';
-- 5. Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and whose salary is not equal to $4,500, $10,000, or $15,000.
SELECT e.last_name, j.job_title, e.salary FROM employees e LEFT JOIN jobs j
ON e.job_id = j.job_id 
WHERE  (j.job_title = 'Programmer' OR j.job_title = 'Shipping Clerk') AND e.salary NOT IN (4500,10000,15000);
-- 6. Write a query to display the last names of employees whose names have exactly 6 characters. 

-- 7. Write a query to display the last names of employees having 'e' as the third character.

-- 8. Write a query to display the jobs/designations available in the employees table. 

-- 9. Write a query to display the names (first_name, last_name), salary and PF (15% of salary) of all employees. 