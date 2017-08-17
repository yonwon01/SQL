--inner join(equi join)

SELECT employee_id,
       a.DEPARTMENT_ID,
       a.FIRST_NAME,
       b.DEPARTMENT_NAME
  FROM employees a, departments b
 WHERE a.DEPARTMENT_ID = b.DEPARTMENT_ID                              --join조건
                                        AND a.salary > 5000;             --row 선택조건


--inner join(self join이면서 equi join)

SELECT emp.FIRST_NAME AS "직원이름", man.FIRST_NAME AS "매니저 이름"
  FROM employees emp, employees man
 WHERE emp.EMPLOYEE_ID = man.DEPARTMENT_ID;



------------------------------

SELECT COUNT (*)
  FROM employees a, departments b
 WHERE a.DEPARTMENT_ID = b.DEPARTMENT_ID;    --null값 있는 것은 안나왓움   106개


SELECT COUNT (*) FROM employees;--107개

SELECT employee_id, department_id
  FROM employees
 WHERE department_id IS NULL;

 --outer join

SELECT COUNT (*)
  FROM employees a, departments b
 WHERE a.DEPARTMENT_ID = b.DEPARTMENT_ID(+);--null이 나올 수 있는 쪽에 플러스를 붙여준다


SELECT a.first_name AS "사원이름",
       NVL (b.DEPARTMENT_NAME, '대기발령') AS "부서이름" --null인 값은 대기발령뜨게
  FROM employees a, departments b
 WHERE a.DEPARTMENT_ID = b.DEPARTMENT_ID(+);--null이 나올 수 있는 쪽에 플러스를 붙여준다
 
 
Select * from employees where manager_id is null;
 
 SELECT emp.FIRST_NAME AS "직원이름", 
 nvl(man.FIRST_NAME,'매니저 없음') AS "매니저 이름"
  FROM employees emp, employees man
 WHERE emp.MANAGER_ID = man.EMPLOYEE_ID(+);
 
 
 
