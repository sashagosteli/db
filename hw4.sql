-- Вывести на экран сколько машин каждого цвета для машин марок BMW и LADA

SELECT MARK, COLOR, COUNT(COLOR) AS 'AUTOquantity' FROM AUTO
WHERE MARK = 'LADA'
GROUP BY COLOR, MARK
UNION SELECT MARK, COLOR, COUNT(COLOR) AS 'AUTOquantity' FROM AUTO
WHERE MARK = 'BMW'
GROUP BY COLOR, MARK;

