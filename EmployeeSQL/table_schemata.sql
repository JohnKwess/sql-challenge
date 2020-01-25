
SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    e.gender,
    s.salaries
from employees e
    JOIN salaries s on e.emp_no = s.emp_no



SELECT
    e.first_name,
    e.last_name,
    e.hire_date
FROM employees e
WHERE e.hire_date BETWEEN '1986-01-01' AND '1986-12-31'

CREATE TABLE dept_mngr_info AS
SELECT 
    d.dept_no,
    d.dept_name,
    dm.emp_no,
    dm.from_date,
    dm.to_date
from departments d
    JOIN dept_manager dm on dm.dept_no = d.dept_no
-- name hercules	
	Select
    e.first_name,
    e.last_name
from employees e
WHERE
e.first_name = 'Hercules' and e.last_name like 'B%'


SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
from employees e
    JOIN dept_emp de on de.emp_no = e.emp_no
    JOIN departments d on d.dept_no = de.dept_no
Where
	d.dept_name = 'Sales'
--all employees in the Sales and Development departments,
SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
from employees e
    JOIN dept_emp de on de.emp_no = e.emp_no
    JOIN departments d on d.dept_no = de.dept_no
Where
	d.dept_name IN ('Sales', 'Development')
--list of  the frequency count of employee last names	
	SELECT
    e.last_name, count(e.last_name) as Last_Name_Count
from employees e
GROUP BY 
e.last_name
ORDER BY 
Last_Name_Count desc 