--multi row subquery

--문)  job_id가 it_prog인 직원의 월급 보다 많이 받는 직원의 이름과 월급

SELECT salary
  FROM employees
 WHERE job_id = 'IT_PROG';



--all->여기 값에있는 모든 값 보다 다커야한다

SELECT first_name, salary
  FROM employees
 WHERE salary > ALL (SELECT salary
                       FROM employees
                      WHERE job_id = 'IT_PROG');


--문) job_id가 'it_prog'인 직원들이 받는 월급과 같은 월급을 받고 직원들의 이름과 월급

--in ->multi중 같은거 하나 있으면 됨
SELECT first_name, salary
  FROM employees
 WHERE salary IN (SELECT salary
                    FROM employees
                   WHERE job_id = 'IT_PROG');

-- =any 는 in 이랑 같은 의미
SELECT first_name, salary
  FROM employees
 WHERE salary = ANY (SELECT salary
                       FROM employees
                      WHERE job_id = 'IT_PROG');
					  
					  
					  
					  
					  
--   >any  , <any