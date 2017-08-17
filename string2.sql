select instr('database management system','base')  from dual;

select employee_id, lpad(salary,10,'*') from employees;--2번째 파라미터:자리수 세번째파라미터로 오른쪽부터 빈공간 채워주기

select  employee_id, rpad(salary,10,'*') from employees;

select trim( '#' from '####data#base####') from dual;--오른쪽 왼쪽에 #없애는것

select trim(' ' from ' data  base   ')from dual;

select '---' || trim(' 'from ' data base ')|| '---' from dual;

select '---' || ltrim('  data base ',' ')|| '---' from dual;

select '---' || replace('  data base ',' ',' ' )|| '---' from dual;