--corelated subquery

--문) 각 부서별로 최고 연봉을 받는 직원의 이름과 월급 출력

  SELECT department_id, MAX (salary)
    FROM employees
GROUP BY department_id;


--1) where

SELECT first_name, salary
  FROM employees
 WHERE (department_id, salary)              --department_id나 salary중 하나만 맞으면 됨
                              IN (  SELECT department_id, MAX (salary)
                                      FROM employees
                                  GROUP BY department_id);


 --2) from

SELECT department_id, first_name, salary
  FROM employees a,
       (  SELECT department_id, MAX (salary) AS max_salary
            FROM employees
        GROUP BY department_id) b                        -- ->하나의 table로 봐야한다.
 WHERE a.DEPARTMENT_ID = b.department_id AND a.SALARY = b.max_salary;


 --3)corelated

SELECT first_name, salary
  FROM employees a
 WHERE salary = (select MAX (salary) FROM employees where a.department_id= department_id);
 
 -------------------------------------------------------------------------------------------------------
 
 
 --문)자기 부서의 평균월급 보다 적은 월급 받는 직원의 이름과 월급
 
 --from
 SELECT a.department_id, a.first_name, a.salary,b.avg_salary
  FROM employees a,
       (  SELECT department_id, avg (salary) AS avg_salary
            FROM employees
        GROUP BY department_id) b                        -- ->하나의 table로 봐야한다.
 WHERE a.DEPARTMENT_ID = b.department_id AND a.SALARY < b.avg_salary;
 
 
 
 --평균연봉이 가장 높은 부서
 select department_id, avg(salary) from employees group by department_id;
 
 select max(avg(salary)) from departments a,employees b group by a.department_id;
 
 
 select max(avg_salary)
 from(select avg(salary) as avg_salary from employees group by department_id);
 
 
 
 select * from(select department_id,avg(salary) as avg_salary from employees group by department_id)a
 where a.avg_salary= (select max(avg_salary)
 from(select avg(salary) as avg_salary from employees group by department_id));
 
 
  
  
  select b.department_name, a.avg_salary
   from(select department_id,avg(salary) as avg_salary from employees group by department_id)a,
  departments b
  where a.department_id=b.DEPARTMENT_ID
  and a.avg_salary= (select max(avg_salary)
 from(select avg(salary) as avg_salary from employees group by department_id));
 
 select department_id, avg(salary) as avg_salary from employees group by department_id
 having avg(salary)=(select max(avg_salary) from(select avg(salary) as avg_salary from employees group by department_id));

 
 
 
 