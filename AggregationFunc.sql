SELECT AVG (salary), MAX (salary) FROM employees;


--error
--집계함수 이외의 칼럽은 프로젝션 될 수 없다.

SELECT employee_id, AVG (salary), MAX (salary) FROM employees;--error: avg와 max는 row가 하나로 결과값이 하나이므로 employee_id와 row길이가 맞지 않다.


  SELECT AVG (salary), MAX (salary)
    FROM employees
ORDER BY employee_id;


--grouping 하면 집계함수 후에 멀티 row가 나온다.
--그러므로, group by 절에 참여하고 있는 컬럼은 프로젝션 할 수 있다.
  SELECT job_id, AVG (salary), MAX (salary)
    FROM employees
   WHERE manager_id IS NOT NULL
GROUP BY job_id;