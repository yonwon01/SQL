
--문제1
select first_name || ' ' || last_name as "이름", email as "이메일", phone_number  as"전화번호" from employees order by hire_date; 

--문제2
select job_title, max_salary from jobs,employees order by salary desc;


--문제3
select count(employee_id) from employees where manager_id is null;

--문제4

select job_title,max_salary from jobs,employees order by salary desc;

--문제5
select count(department_id) from departments;

--문제6
select department_id, department_name, manager_id, location_id from departments order by length(department_name)desc;

--문제7
select count(manager_id) from departments where manager_id is null;

--문제8
select upper(country_name) from countries where region_id is not null;

--문제9
select region_name from regions order by length(region_name);

--문제10
select distinct city from locations order by lower(city);



