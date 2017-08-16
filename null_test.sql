--null test
select employee_id, salary, commission_pct from employees;

select employee_id, salary, salary+ salary*commission_pct from employees;

--nvl 함수(null value)
select nvl(null, 10) from dual; --null이면 10이나옴 아니면 원래값 
select nvl(20,10)from dual;

select employee_id, salary, salary+ salary*nvl(commission_pct,0) from employees;--commision_pct가 null이면 0출력

select employee_id, nvl(manager_id, 0) from employees;

--error: nvl함수아느이 두파라미터 데이터 타입이 같아야한다.
--error: select employee_id, nvl(manager_id, '없음') from employees;