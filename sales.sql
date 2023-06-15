SELECT SALARY,
    IF (salary < 100, 'сотрудник', 'менеджер')
FROM sales
