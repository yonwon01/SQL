--where 조건


--job_id가 ad_pres 이거나 ad_vp
select * from employees;

select employee_id, job_id from employees where job_id='AD_PRES' or job_id='AD_VP';

select employee_id, job_id from employees where job_id IN ('AD_PRES','AD_VP');




select employee_id,salary from employees where 1000<salary and salary<2000;
select employee_id,salary from employees where salary between 1000 and 2000;

--null값을 가지는 컬럼을 where절에 사용할때
select employee_id, commission_pct from employees where commission_pct is null;

--null값을 안 가지는 컬럼을 where절에 사용할때
select employee_id, commission_pct from employees where commission_pct is not null;


--LIKE
select first_name from employees where first_name like 'A%';--first_name 에서 a로 시작하는 모든 문자열
select first_name from employees where first_name like '%a';--first_name 에서 a로 끝나는 모든 문자열

select first_name from employees where first_name like '%y%';--first_name 에 v가 있으면 됨

--문자 다음에 __갯수만큼 문자가 나오는 문자열
select first_name from employees where first_name like 'l____';





