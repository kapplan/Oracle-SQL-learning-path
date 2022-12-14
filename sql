
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
          WHERE department_id IN(10, 20) OR salary > 3000;

   b) have managers and work on position ST_CLERK
   
          SELECT employee_id, last_name, first_name, salary, job_id, department_id
          FROM employees
          WHERE manager_id IS NOT NULL AND job_id ='ST_CLERK';
      
   c) a AND b
   
          SELECT employee_id, last_name, first_name, salary, job_id, department_id
          FROM employees
          WHERE (department_id IN(10, 20) OR salary > 3000) 
          AND (manager_id IS NOT NULL AND job_id ='ST_CLERK');
      
   d) a OR b
   
   
          SELECT employee_id, last_name, first_name, salary, job_id, department_id
          FROM employees
          WHERE (department_id IN(10, 20) OR salary > 3000)
          OR (manager_id IS NOT NULL AND job_id ='ST_CLERK');

   e) NOT ( a AND b)
   
       SELECT employee_id, last_name, first_name, salary, job_id, department_id
           FROM employees
           WHERE NOT (department_id IN(10, 20) OR salary > 3000) 
           AND (manager_id IS NOT NULL AND job_id ='ST_CLERK');
      
   f) NOT a OR b
   
      SELECT employee_id, last_name, first_name, salary, job_id, department_id
          FROM employees
          WHERE NOT (department_id IN(10, 20) OR salary > 3000)
          OR (manager_id IS NOT NULL AND job_id ='ST_CLERK');

# 8. Who has the last name that consists of 4 letters and starts with K
          SELECT last_name
          FROM employees
          WHERE length(last_name) = 4 AND last_name LIKE ('K%___');


# 9. What are the last names, jobs of employees who work in 50 department and have the salary greater than 3000
             SELECT last_name, job_id, department_id
             FROM employees
             WHERE department_id = 10 AND salary > 3000;

 
# Single Row Functions
1. display last and first names of all employees from department 10 and their salary increased by 10% and rounded to 2 decimal places
   
            SELECT first_name, last_name, salary, round(salary+(salary*10)/100, 2) AS salary_increased
            FROM employees
            WHERE department_id=10;
        
2. display last and first names of all employees hired no earlier, than in 1st of January of 2000
3. display last and first names of all employees converted to upper cases
4. display last and first names, hiredate and salary of all employees, hire date should
      converted to varchar2 value and contain NAME of the month (for example: 21-JANUARY-1999)  
      
            SELECT last_name, first_name, salary, to_char(hire_date, 'DD-MONTH-YYYY')
            FROM employees;

5. build a report containing department number, last name converted to upper case, first name also converted to upper case, salary increased by 25% and truncated to 2 decimal places      
   
            SELECT department_id, upper(first_name), upper(last_name), salary, trunc(salary+(salary*25)/100, 2) 
            FROM employees;

6. build a report containing last names of all employees, all occurences of K letter should be replaced with A
   
            SELECT upper(last_name), replace(last_name, 'K', 'A')
            FROM employees;
