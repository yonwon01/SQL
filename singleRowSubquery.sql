--single row subquery

SELECT first_name, salary
  FROM employees
 WHERE salary > (SELECT salary
                   FROM employees
                  WHERE first_name = 'Lex');

SELECT first_name, salary
  FROM employees
 WHERE salary = (SELECT salary
                   FROM employees
                  WHERE first_name = 'Lex');
				  
				
 SELECT first_name, salary
  FROM employees
 WHERE salary <>(SELECT salary
                   FROM employees
                  WHERE first_name = 'Lex');
				  
				  
				  
				  
				 				
 SELECT first_name, salary
  FROM employees
 WHERE salary >(SELECT avg(salary)
                   FROM employees); 