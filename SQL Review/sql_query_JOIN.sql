-- E. SQLite Joins
-- 1. Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments. 
--SELECT d.department_id, d.location_id, l.street_address, l.city, l.state_province, c.country_name FROM departments d LEFT JOIN locations l
--ON d.location_id = l.location_id
--LEFT JOIN countries c 
--ON l.country_id = c.country_id;
-- 2. Write a query to find the names (first_name, last name), department ID and the name of all the employees.
--SELECT first_name, last_name, department_id FROM employees;
-- 3. Write a query to find the employee id, name (last_name) along with their manager_id, manager name (last_name).

-- 4. Write a query to find the names (first_name, last_name) and hire date of the employees who were hired after 'Jones'.
--SELECT first_name, last_name, hire_date FROM employees WHERE hire_date > (SELECT hire_date FROM employees WHERE last_name = 'Jones' LIMIT 1);
-- LUU Y 5. Write a query to get the department name and number of employees in the department.
--SELECT d.department_id, d.department_name, count(*) FROM employees e LEFT JOIN department d 
--ON e.department_id  = d.department_id
--GROUP BY e.department_id ;
-- CHI HIEN NAM 6. Write a query to find the employee ID, job title number of days between ending date and starting date for all jobs in department 90 from job history.
--SELECT jh.employee_id, j.job_title, jh.end_date - jh.start_date FROM job_history jh LEFT JOIN jobs j
--ON jh.job_id = j.job_id
--WHERE jh.department_id = 90;
-- 7. Write a query to display the department ID, department name, and manager first name. 

-- 8. Write a query to display the department name, manager name, and city. 

-- 9. Write a query to display the job title and average salary of employees.
--SELECT last_name, j.job_title, e.Avg_Salary FROM employees e LEFT JOIN jobs j 
--ON e.job_id = j.job_id;
-- 10. Write a query to to display job title, employee name, and the difference between the salary of the employee and minimum salary for the job.
-- SELECT e.last_name||' '||e.first_name AS 'Name', j.job_title, e.salary - j.min_salary  FROM employees e LEFT JOIN jobs j 
-- ON e.job_id = j.job_id;
-- 11. Write a query to display the job history that was done by any employee who is currently drawing more than 10000 of salary.
SELECT jh.* FROM employees e JOIN job_history jh 
ON e.job_id = jh.job_id 
WHERE e.salary > 10000;