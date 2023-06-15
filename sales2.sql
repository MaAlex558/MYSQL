SELECT
id AS "Порядковый номер",
Name AS "Имя",
salary AS "Заработная плата",
	IF(salary < 100, "EMPLOYEE",
		IF(salary > 300, "TOP",
			IF(salary >= 100 AND salary < 300, "MANAGER", "Неопределенно"))) AS "Должность"
FROM sales;
