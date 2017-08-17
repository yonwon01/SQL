--01
select MAX(salary) as "최고임금",MIN(salary) as"최저임금",max(salary)-min(salary)as"최고임금-최저임금" from employees;

--02
select max(to_char(hire_date,'yyyy"년"MM"월"dd"일"')) from employees;

--3. 부서별로 group by(department id) order by avg max min
select avg(salary), max(salary), min(salary) , department_id from employees group by department_id
order by avg(salary),max(salary),min(salary) desc;

--4. employee테이블에서
select avg(salary), max(salary), min(salary), job_id from employees group by job_id
order by avg(salary),max(salary),min(salary) desc;

--05.
select min(to_char(hire_date,'yyyy"년"MM"월"dd"일"')) from employees;

--06.
select (avg(salary)-min(salary)) as "평균 연금-최저 임금", department_id from employees
group by department_id
having( avg(salary)-min(salary)<2000)
order by  avg(salary)-min(salary) desc;

--07.


select job_id,  max(salary)-min(salary) from employees
group by job_id
order by max(salary)-min(salary) desc;





