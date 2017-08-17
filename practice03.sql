--1.

SELECT emp.employee_id,
       emp.FIRST_NAME,
       dep.department_name,
       man.FIRST_NAME
  FROM employees emp, employees man, departments dep
 WHERE     emp.DEPARTMENT_ID = dep.DEPARTMENT_ID
       AND emp.MANAGER_ID = man.employee_id;



--2.

  SELECT region_name, country_name
    FROM regions, countries
   WHERE regions.REGION_ID = countries.REGION_ID
ORDER BY region_name DESC, country_name DESC;

--3

SELECT dep.DEPARTMENT_ID,
       dep.DEPARTMENT_NAME,
       man.FIRST_NAME,
       loc.city,
       co.country_name,
       reg.REGION_NAME
  FROM employees emp,
       employees man,
       departments dep,
       locations loc,
       countries co,
       regions reg
 WHERE     emp.MANAGER_ID = man.EMPLOYEE_ID
       AND emp.DEPARTMENT_ID = dep.DEPARTMENT_ID
       AND loc.LOCATION_ID = dep.LOCATION_ID
       AND co.COUNTRY_ID = loc.COUNTRY_ID
       AND reg.REGION_ID = co.REGION_ID;


--4.


SELECT emp.first_name || ' ' || emp.LAST_NAME, ji.JOB_ID
  FROM job_history jh, employees emp, jobs ji
 WHERE     jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
       AND ji.JOB_ID = jh.JOB_ID
       AND (jh.END_DATE < SYSDATE);



--5.

  SELECT emp.employee_id,
         emp.first_name,
         emp.last_name,
         emp2.employee_id,
         emp2.first_name,
         emp2.last_name
    FROM employees emp, employees emp2
   WHERE emp.LAST_NAME = emp2.LAST_NAME
ORDER BY emp.LAST_NAME;

--6

SELECT emp.employee_id, emp.last_name, emp.HIRE_DATE
  FROM employees emp, employees man
 WHERE emp.MANAGER_ID = man.EMPLOYEE_ID AND emp.HIRE_DATE < man.HIRE_DATE;