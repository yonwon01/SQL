--rollup,cube

--문) 부서별, 직책별  평균 월급, 사원수를 출력하세요
--
select department_id, job_id, count(*),avg(salary)
from employees
group by department_id,job_id--부서로 그룹핑 하고 그안에서 job_id같은사람 그룹 묶음
order by department_id,job_id;

--roll up은 부서별로 값도 나오고 부서안에서 직책별로도 나옴 
select case grouping(department_id)
 when 1 then '모든 부서'
 else nvl(to_char(department_id),'없음')
 end as "부서",
  case grouping(job_id)
 when 1 then '모든 직책'
 else nvl(to_char(job_id),'없음')
 end as"직책",
  count(*),round(avg(salary),0)       --grouping: 그룹핑 되면 1, 안되면 0
from employees
group by rollup(department_id,job_id)--부서로 그룹핑 하고 그안에서 job_id같은사람 그룹 묶음
order by department_id,job_id;



  select case grouping(job_id)
 when 1 then '모든 직책'
 else nvl(to_char(job_id),'없음')
 end as"직책",
  count(*),round(avg(salary),0)--grouping: 그룹핑 되면 1, 안되면 0
from employees
group by rollup(department_id,job_id)--부서로 그룹핑 하고 그안에서 job_id같은사람 그룹 묶음
order by department_id,job_id;



--cube

select case grouping(department_id)
 when 1 then '모든 부서'
 else nvl(to_char(department_id),'없음')
 end as "부서",
  case grouping(job_id)
 when 1 then '모든 직책'
 else nvl(to_char(job_id),'없음')
 end as"직책",
  count(*),round(avg(salary),0)       --grouping: 그룹핑 되면 1, 안되면 0
from employees
group by cube(department_id,job_id)
order by department_id,job_id;










