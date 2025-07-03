create view last_name as
select employee_name , last_name
from employee

select * from last_name ;

alter table employee 
add column last_name varchar (100);

update  employee
set last_name = 'selven'
where employee_name = 'tamil';

CREATE ALGORITHM = TEMPTABLE VIEW secure_view AS
SELECT * FROM sensitive_table
WHERE access_level <= 3;

CREATE VIEW VwITEmployees AS
SELECT emp.id, emp.name, dept.name AS dept_name
FROM Employee emp
JOIN Department dept USING(department_id)
WHERE dept.name = 'IT';

CREATE VIEW hr_employees AS
SELECT * FROM employee
WHERE last_name = 'kumar'
WITH CHECK OPTION;


