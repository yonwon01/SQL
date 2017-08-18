--start with~connect by 절

    SELECT LEVEL, manager_id, employee_id
      FROM employees
START WITH manager_id IS NULL                 --시작하는 기준만드는거->manager id 없는 것부터
CONNECT BY PRIOR employee_id = manager_id                      --기준이 되는 것을 왼쪽에
  ORDER BY LEVEL, manager_id, employee_id;