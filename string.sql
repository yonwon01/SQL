--문자열 함수
select lower('Database Management System') from dual;

select first_name from employees where first_name like 'al%';--대문자AL은 안찾아짐

select first_name from employees where lower(first_name) like 'al%';

select last_name, upper(last_name) from employees;

select initcap('database management system') from dual;--단어의 맨앞만 대문자로 바꿈

select first_name || ' ' || last_name from employees;

select concat(first_name, concat(' ',last_name)) from employees;

select length('database') from dual;

select count(city) from locations;
select count (distinct city) from locations;

select distinct job_id from employees order by job_id; 

select count(job_id) from employees;
select count(distinct job_id) from employees;


