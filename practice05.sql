--1~3저장 안해서 날락ㅁ..


--4.

  SELECT dep.department_name
    FROM departments dep,
         employees emp,
         (  SELECT AVG (salary) AS avg_salary
              FROM employees
          GROUP BY department_id)
   WHERE ROWNUM = 1 AND avg_salary IN (SELECT MAX (avg_salary) FROM employees)
ORDER BY avg_salary DESC;


--5.

SELECT reg.region_name
  FROM regions reg,
       departments dep,
       locations loc,
       countries con,
       (  SELECT AVG (emp.salary) AS avg_salary
            FROM employees emp, regions reg
        GROUP BY reg.region_id)
 WHERE     ROWNUM = 1
       AND loc.LOCATION_ID = dep.LOCATION_ID
       AND reg.REGION_ID = con.REGION_ID
       AND con.COUNTRY_ID = loc.COUNTRY_ID
       AND avg_salary IN (  SELECT MAX (AVG (salary))
                              FROM employees, regions
                          GROUP BY region_id);



--6.

SELECT jb.job_title
  FROM jobs jb,
       employees emp,
       (  SELECT AVG (emp.salary) AS avg_salary
            FROM employees emp, jobs jb
        GROUP BY jb.job_id)
 WHERE     ROWNUM = 1
       AND jb.JOB_ID = emp.JOB_ID
       AND avg_salary = (  SELECT MAX (AVG (salary))
                             FROM employees , jobs jb
                         GROUP BY jb.job_id);
						 
						 
						