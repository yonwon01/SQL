--subquery

SELECT first_name
  FROM employees
 WHERE first_name = "lex";


--이름이 lex인 사원보다 많은 직원들의 이름과 월급



SELECT first_name, salary
  FROM employees
 WHERE salary > (SELECT salary
                   FROM employees
                  WHERE first_name = 'Lex');
				  
				  
				  
	
SELECT a.first_name, b.salary
  FROM employees a, (SELECT salary
                   FROM employees
                  WHERE first_name = 'Lex')b
 WHERE a.salary >b.salary; 			  