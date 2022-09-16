-- C. Aggregate Functions and Group by

-- 1. Write a query to list the number of jobs available in the employees table. 
SELECT job_id AS 'Jobs', COUNT(job_id) AS 'Numver of jobs' FROM employees GROUP BY job_id;
-- 2. Write a query to get the total salaries payable to employees.

-- 3. Write a query to get the minimum salary from employees table.

-- 4. Write a query to get the maximum salary of an employee working as a Programmer. 

-- 5. Write a query to get the average salary and number of employees working the department 90.

-- 6. Write a query to get the highest, lowest, sum, and average salary of all employees.

-- 7. Write a query to get the number of employees with the same job. 

-- 8. Write a query to get the difference between the highest and lowest salaries. 

-- 9. Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.

-- 10. Write a query to get the department ID and the total salary payable in each department. 

-- 11. Write a query to get the average salary for each job ID excluding programmer. 

-- 12. Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90 only.

-- 13. Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.

-- 14. Write a query to get the average salary for all departments employing more than 10 employees.