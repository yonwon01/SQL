
--1.
SELECT emp.employee_id,
       emp.FIRST_NAME,
       dep.department_name,
       man.FIRST_NAME
  FROM employees emp, employees man, departments dep
 WHERE     emp.DEPARTMENT_ID = dep.DEPARTMENT_ID
       AND emp.MANAGER_ID = man.employee_id;



--2.
select region_name,country_name
from regions, countries
where regions.REGION_ID=countries.REGION_ID
order by region_name desc, country_name desc;

--3
select dep.DEPARTMENT_ID, dep.DEPARTMENT_NAME,man.FIRST_NAME, loc.city, co.country_name , reg.REGION_NAME
from employees emp, employees man, departments dep, locations loc, countries co,regions reg
where emp.MANAGER_ID=man.EMPLOYEE_ID and emp.DEPARTMENT_ID=dep.DEPARTMENT_ID and loc.LOCATION_ID=dep.LOCATION_ID
and co.COUNTRY_ID=loc.COUNTRY_ID and reg.REGION_ID=co.REGION_ID;


--4.


select emp.first_name||' '||emp.LAST_NAME,ji.JOB_ID from job_history jh, employees emp ,jobs ji
where jh.EMPLOYEE_ID=emp.EMPLOYEE_ID and ji.JOB_ID=jh.JOB_ID
 and (jh.END_DATE<sysdate);



--5.
select emp.employee_id ,emp.first_name,emp.last_name 
, emp2.employee_id,emp2.first_name,emp2.last_name
FROM employees emp, employees emp2
where emp.LAST_NAME=emp2.LAST_NAME
order by emp.LAST_NAME;

--6
select emp.employee_id, emp.last_name ,emp.HIRE_DATE,man.HIRE_DATE from employees emp, employees man
where emp.MANAGER_ID=man.EMPLOYEE_ID and emp.HIRE_DATE<man.HIRE_DATE;




