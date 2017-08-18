--1.
select count(employee_id) from employees where salary< (select avg(salary) from employees );

--2.
select employee_id, last_name, salary from employees 
where salary in (select max(salary) from employees group by department_id)
order by salary desc;

--3.

 select a.job_id, a.job_title, sum_salary
 from jobs a, (select sum(salary) sum_salary, job_id 
 from employees group by job_id) b
 where a.job_id = b.job_id
 order by sum_salary desc;



--4.




select employee_id, last_name,salary from employees emp, (select avg(salary) AS AVG_SALARY from employees group by department_id)
WHERE EMP.SALARY> AVG_SALARY;


