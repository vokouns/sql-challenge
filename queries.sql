SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
	FROM employees AS emp LEFT JOIN salaries AS sal
	ON (emp.emp_no = sal.emp_no)
ORDER BY emp.emp_no;

SELECT first_name, last_name, hire_date FROM employees 
	WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT deptm.dept_no,
	dept.dept_name,
	deptm.emp_no,
	emp.last_name,
	emp.first_name
FROM dept_manager AS deptm
	INNER JOIN departments as dept
	ON (deptm.dept_no = dept.dept_no)
	INNER JOIN employees as emp
	ON (deptm.emp_no = emp.emp_no);

SELECT depte.dept_no,
	depte.emp_no,
	emp.last_name,
	emp.first_name,
	dept.dept_name	
FROM dept_emp AS depte
	INNER JOIN departments as dept
	ON (depte.dept_no = dept.dept_no)
	INNER JOIN employees as emp
	ON (depte.emp_no = emp.emp_no)

SELECT first_name, last_name, sex FROM employees
	WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT depte.emp_no,
	emp.last_name,
	emp.first_name,
	dept.dept_name	
FROM dept_emp AS depte
	INNER JOIN departments as dept
	ON (depte.dept_no = dept.dept_no)
	INNER JOIN employees as emp
	ON (depte.emp_no = emp.emp_no)
WHERE dept.dept_name = 'Sales'

SELECT depte.emp_no,
	emp.last_name,
	emp.first_name,
	dept.dept_name	
FROM dept_emp AS depte
	INNER JOIN departments as dept
	ON (depte.dept_no = dept.dept_no)
	INNER JOIN employees as emp
	ON (depte.emp_no = emp.emp_no)
WHERE dept.dept_name IN ('Sales', 'Development');

SELECT last_name, COUNT(last_name) FROM employees
GROUP BY last_name ORDER BY COUNT(last_name) DESC;