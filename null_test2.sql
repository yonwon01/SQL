--null nvl
select nvl(null,0) from dual;


select nvl2(null,10,20), nvl2(0,10,20) from dual;--null이면 뒤 에값, 아니면 앞 값

--nvl로 해결한 경우
select employee_id, salary, salary+ salary*nvl(commission_pct,0) from employees;


--nvl2로 해결 
select employee_id, salary, nvl2(commission_pct,salary, salary+ salary*commission_pct) from employees;

--nullif
select nullif(10,5+5) from dual;
select nullif(10,5+4) from dual;--틀리면 앞에꺼

--coalesce
select coalesce(null,null,1,2,3,4)from dual;--null이면 다음꺼 
select coalesce(null,20,null,2,3,4)from dual;
select coalesce(10,20,null,2,3,4)from dual;


