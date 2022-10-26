# Oracle SQL
# Exercises for me to excel in SQL and the homeworks I've done during my big data master's degree in SGH (coursework for Databases Build and Exploitation)


# 1. read last name, first name and salary of all employees working in department 10 and with salary greater than 2000
    SELECT first_name, last_name, salary, department_id
    FROM employees
    WHERE department_id IN 10 AND salary > 2000;

# 2. read id, last name, first name and salary of all employees working in all departments, but not 10 and with salaries less or equal 5000
    SELECT first_name, last_name, salary, department_id
    FROM employees
    WHERE department_id NOT IN 10 AND salary <= 5000;

# 3. find the employee (his last name and first name) who has not got a manager
    SELECT first_name, last_name, manager_id
    FROM employees
    WHERE manager_id IS NULL;

# 4. a report containing ids, last and first names, hire date of all employees from department 20
    SELECT first_name, last_name, employee_id, hire_date
    FROM employees
    WHERE department_id = 20;

# 5. Who is not a clerk? (clerk has a job id that consists of CLERK somewhere in the job_id)
    SELECT first_name, last_name, job_id
    FROM employees
    WHERE NOT job_id LIKE '%CLERK%';

# 6. build a list of employees (employee_id, last_name, first_name, salary, department), who have managers and work in the following departments: 10, 30, 40
    SELECT employee_id, last_name, first_name, salary, department_id, manager_id
    FROM employees
    WHERE manager_id IS NOT NULL AND department_id IN(10, 30, 40);

# 7. build a list of employees (employee_id, last_name, first_name, salary, job_id, department, who
   a) work in department 10 or 20 or have salary > 3000
   
      SELECT employee_id, last_name, first_name, salary, job_id, department_id
      FROM employees
      WHERE department IN(10, 20) OR salary > 3000;

   b) have managers and work on position ST_CLERK
   
      SELECT employee_id, last_name, first_name, salary, job_id, department_id
      FROM employees
      WHERE manager_id IS NOT NULL AND job_id ='ST_CLERK';
      
   c) a AND b
   
   d) a OR b
   e) NOT ( a AND b)
   f) NOT a OR b

# 8. Who has the last name that consists of 4 letters and starts with K

# 9. What are the last names, jobs of employees who work in 50 department
   and have the salary greater than 3000
