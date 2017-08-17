--insert into member(email,join_date)
--values('yonwon01@naver.com','2017-07-22')--join_date는 date type이니까  string으로 못넣음

SELECT value FROM nls_session_parameters WHERE parameter = 'NLS_DATE_FORMAT';--default로 잡혀있는 데이트 출력 포맷

select employee_id,hire_date from employees;

select add_months(sysdate,3) from dual;--첫번째 파라미터에 데이트 포맷 말고 문자열도 올수있음
select add_months('15/01/01',3)from dual;--현재날짜에 3월이 더해짐 
select add_months('15-01-01',3)from dual;
select add_months('15 01 01',3)from dual;

select last_day(sysdate) from dual;
select last_day('2015-02-01') from dual;

select months_between(add_months(sysdate,3),sysdate) from dual;

select employee_id, job_id,months_between( end_date, start_date)--근무월수가 나옴
from job_history;

--요일
-- 1->sun, 7->sat
select next_day(sysdate,7) from dual;--다음 토요일 날짜

--변환 함수 
select employee_id, salary from employees;
select employee_id, to_char(salary,'99999')from employees;--format을 숫자 5자리 수 로 한것

select employee_id, to_char(salary,'9999')from employees;--자리수가 4개가 넘는건 안나옴

select employee_id, to_char(salary,'9999999999')from employees;--길면 앞에 빈공간이 생김

select employee_id, to_char(salary,'0009999999')from employees;

select employee_id, to_char(salary,'####99999')from employees;--0과9로만 됨.다른건 오류

select employee_id, to_char(salary,'99,999')from employees;

select to_char(3.14148943,'9.99')from dual;

select employee_id, to_char(salary,'FM99999999999')from employees;

select employee_id, to_char(salary,'FM$9999999999')from employees;

select to_char(-12345,'99999MI' ) from dual;
select to_char(-12345,'S99999' ) from dual;
select to_char(12345,'S99999' ) from dual;
select to_char(0,'s99999') from dual;

select to_char(12345,'99999PR')from dual;--양수는 +안붙고 그냥 나오는데 음수는 
select to_char(-12345,'99999PR')from dual;--꺽세로 나옴

select to_char(0,'RN')from dual;
select to_char(1,'RN')from dual;
select to_char(3999,'RN')from dual;
select to_char(3999,'rn')from dual;

select to_char(1234,'XXX')from dual;
select to_char(1234,'xxx')from dual;

select to_number('1234567','9999999')+10 from dual;--문자열을 숫자로 바꾼것

select to_number('1234567','999999')+10 from dual;--원래 수보다 적게 포맷해버리면 에러
