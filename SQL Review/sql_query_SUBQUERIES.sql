
-- D. SQLite Subquery

-- 1. Write a query to find the names (first_name, last_name) and salaries of the employees who have a higher salary than the employee whose last_name='Bull'. 
-- SELECT first_name, last_name, salary FROM employees WHERE salary > (SELECT salary FROM employees WHERE last_name  = 'Bull');
-- 2. Write a query to find the names (first_name, last_name) of all employees who works in the IT department.
-- SELECT first_name, last_name FROM employees WHERE department_id = (SELECT department_id FROM department WHERE department_name LIKE '%IT%');
-- 3. Write a query to find the names (first_name, last_name) of the employees who have a manager who works for a department based in the United States.

-- 4. Write a query to find the names (first_name, last_name) of the employees who are managers.

-- 5. Write a query to find the names (first_name, last_name), the salary of the employees whose salary is greater than the average salary.
-- SELECT last_name, first_name, salary FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);
-- 6. Write a query to find the names (first_name, last_name), the salary of the employees whose salary is equal to the minimum salary for their job grade. 
--SELECT first_name, last_name, job_id, salary FROM employees e1 WHERE salary IN (SELECT min_salary FROM jobs WHERE job_id = e1.job_id);
-- 7. Write a query to find the names (first_name, last_name), the salary of the employees who earn more than the average salary and who works in any of the IT departments. 
-- SELECT first_name, last_name, salary FROM employees WHERE salary > (SELECT AVG(salary) FROM employees) 
-- AND salary >= (SELECT MAX(salary) FROM employees WHERE department_id = (SELECT department_id FROM department WHERE department_name LIKE '%IT%')); 
-- 8. Write a query to find the names (first_name, last_name), the salary of the employees who earn more than Mr. Bell.
--SELECT first_name, last_name, salary FROM employees WHERE salary >= (SELECT MAX(salary) FROM employees WHERE last_name = 'Bell' OR first_name = 'Bell');
-- 9. Write a query to find the names (first_name, last_name), the salary of the employees who earn the same salary as the minimum salary for all departments.
-- SELECT first_name, last_name, salary FROM employees WHERE salary = (SELECT min_salary FROM jobs);
-- 10. Write a query to find the names (first_name, last_name) of the employees who are not supervisors.

-- 11. Write a query to display the employee ID, first name, last names, salary of all employees whose salary is above average for their departments.
-- SELECT employee_id, first_name, last_name FROM employees e1 WHERE salary > (SELECT AVG(salary) FROM employees e2 GROUP BY department_id HAVING e2.department_id=e1.department_id);
-- 12. (SOS) Write a query to find the 5th maximum salary in the employees table.

-- 13. (SOS) Write a query to find the 4th minimum salary in the employees table.

-- 14.(SOS) Write a query to select last 10 records from a table.

-- 15. Write a query to list department number, name for all the departments in which there are no employees in the department.

-- 16. (SOS) Write a query to get 3 maximum salaries. 

-- 17. (SOS) Write a query to get 3 minimum salaries.

-- 18. (SOS) Write a query to get nth max salaries of employees.
