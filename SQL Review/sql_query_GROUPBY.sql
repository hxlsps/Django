-- C. Aggregate Functions and Group by

-- 1. Write a query to list the number of jobs available in the employees table. 
--SELECT job_id AS 'Jobs', COUNT(job_id) AS 'Numver of jobs' FROM employees GROUP BY job_id;
-- 2. Write a query to get the total salaries payable to employees.
-- SELECT SUM(salary) FROM employees;
-- 3. Write a query to get the minimum salary from employees table.
-- SELECT MIN(salary) FROM employees;
-- 4. Write a query to get the maximum salary of an employee working as a Programmer. 
-- SELECT MAX(e.salary) FROM employees e LEFT JOIN jobs j 
-- ON e.job_id = j.job_id
-- WHERE j.job_title = 'Programmer';
-- 5. Write a query to get the average salary and number of employees working the department 90.
-- SELECT AVG(e.salary), COUNT(*) FROM employees e LEFT JOIN jobs j 
-- ON e.job_id = j.job_id
-- WHERE j.job_title = 'Programmer';
-- 6. Write a query to get the highest, lowest, sum, and average salary of all employees.
-- SELECT MAX(salary), MIN(salary), SUM(salary) FROM employees;
-- 7. Write a query to get the number of employees with the same job. 
-- SELECT COUNT(*), job_id FROM employees GROUP BY job_id;
-- 8. Write a query to get the difference between the highest and lowest salaries. 
-- SELECT MAX(salary) - MIN(salary) FROM employees;
-- 9. Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.
--SELECT manager_id, salary FROM employees WHERE salary = (
--SELECT MIN(salary) FROM employees);
-- 10. Write a query to get the department ID and the total salary payable in each department. 
-- SELECT department_id, SUM(salary) FROM employees GROUP BY department_id;
-- 11. Write a query to get the average salary for each job ID excluding programmer. 
--SELECT job_id, AVG(salary) FROM employees GROUP BY job_id HAVING job_id <> (
--SELECT job_id FROM jobs WHERE job_title = 'Programmer');
-- 12. Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90 only.
-- SELECT SUM(salary), MAX(salary), MIN(salary), AVG(salary) FROM employees GROUP BY department_id HAVING department_id = 90;
-- 13. Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.

-- 14. Write a query to get the average salary for all departments employing more than 10 employees.
SELECT COUNT(*), department_id FROM employees GROUP BY department_id;
SELECT AVG(salary), department_id FROM employees GROUP BY department_id HAVING COUNT(*)>=10;