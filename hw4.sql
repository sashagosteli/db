-- Вывести на экран сколько машин каждого цвета для машин марок BMW и LADA

SELECT MARK, COLOR, COUNT(COLOR) AS 'AUTOquantity' FROM AUTO
WHERE MARK = 'LADA'
GROUP BY COLOR, MARK
UNION SELECT MARK, COLOR, COUNT(COLOR) AS 'AUTOquantity' FROM AUTO
WHERE MARK = 'BMW'
GROUP BY COLOR, MARK;

-- Вывести на экран марку авто и количество AUTO не этой марки

SELECT COUNT(MARK) AllMarkCount,
		COUNT(CASE WHEN MARK != 'BMW' THEN mark END) CountWithoutBMW,
        COUNT(CASE WHEN MARK != 'LADA' THEN mark END) CountWithoutLADA,
		COUNT(CASE WHEN MARK != 'AUDI' THEN mark END) CountWithoutAUDI,
        COUNT(CASE WHEN MARK != 'VOLVO' THEN mark END) CountWithoutVOLVO
FROM AUTO
;



-- Напишите запрос, который вернет строки из таблицы test_a, id которых нет в таблице test_b, НЕ используя ключевого слова NOT.

SELECT * FROM test_a
NATURAL LEFT JOIN test_b
WHERE test_b.id_number IS NULL;

