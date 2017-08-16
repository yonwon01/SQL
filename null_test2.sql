--null nvl
select nvl(null,0) from dual;


select nvl2(null,10,20), nvl2(0,10,20) from dual;--null이면 앞에값, 아니면 뒷 값

--nvl로 해결한 경우
select employee_id, salary, salary+ salary*nvl(commission_pct,0) from employees;


--nvl2로 해결 
select employee_id, salary, nvl2(commission_pct,salary, salary+ salary*commission_pct) from employees;

--nullif



