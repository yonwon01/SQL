
--주석  select from
SELECT * FROM employees;
select count(*) from locations;

select first_name,last_name from employees;

select first_name ||' '||last_name as"이름" from employees; 
-- 자바 넘어가기전에 쿼리상에서 처리를 마치는게 좋음
--||->두개 string을 합쳐주는것->oracle에서 지원