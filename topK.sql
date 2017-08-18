--top-k

select rownum,employee_id,salary from employees
where hire_date like '06%';  --06으로 시작하는 거
--order by salary desc;  --rownum이랑 order by를 같이쓰면 rownum쓸필요가 없음

--top-k
select rownum, employee_id, salary
from(select employee_id,salary from employees
where hire_date like '06%' order by salary desc)
where rownum <=5;--뽑을거 정해서 뽑는것-> top k


--error :6번째부터10번째까지 뽑는 경우
select rownum, employee_id, salary
from(select employee_id,salary from employees
where hire_date like '06%' order by salary desc)
where 6 <=rownum and rownum <=10;      --중간에서부터 뽑으면 6전에께 값이 있는데 못나가기 때문에 안나옴

--6번째부터10번째까지 뽑는 경우
select * from (select rownum as rn, employee_id,salary
from(select employee_id, salary from employees where hiredate like '06%' order by salary desc))
where 6 <= rn and rn<=10;

