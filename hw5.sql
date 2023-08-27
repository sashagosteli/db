-- 1. Создайте представление, в которое попадет информация о пользователях (имя, фамилия,
-- город и пол), которые не старше 20 лет.
use seminar_4;
CREATE OR REPLACE VIEW users_VIEW AS 
	SELECT 
   	u.id as id,
   	u.firstname as firstname,
	u.lastname as lastname,
    
    	p.hometown as hometown,
    	p.gender as gender,
    	p.birthday as b_date
   
	from users u
RIGHT join profiles p on u.id = p.user_id
WHERE DATE(birthday) > '2003-08-27'

ORDER BY p.birthday;

SELECT * FROM users_VIEW;


-- 2. Найдите кол-во, отправленных сообщений каждым пользователем и выведите
-- ранжированный список пользователей, указав имя и фамилию пользователя, количество
-- отправленных сообщений и место в рейтинге (первое место у пользователя с максимальным
-- количеством сообщений) . (используйте DENSE_RANK)

SELECT
	m.from_user_id ,
    COUNT(m.from_user_id) as count_msg,
	DENSE_RANK()
	OVER(ORDER BY COUNT(m.from_user_id) DESC) AS 'DANSE_RANK',
    u.firstname,
	u.lastname,
	u.id

FROM  messages m
left join  users u on m.from_user_id = u.id
group by m.from_user_id;

-- 3. Выберите все сообщения, отсортируйте сообщения по возрастанию даты отправления
-- (created_at) и найдите разницу дат отправления между соседними сообщениями, получившегося
-- списка. (используйте LEAD или LAG)

SELECT 
	*, 
    LAG(created_at,1,0) OVER dt as LAG_last_message_was,
    LEAD(created_at,1,0) OVER dt as LEAD_next_message_will_come,
    created_at - LAG(created_at,1) OVER(ORDER BY created_at) as time_diff_seconds
FROM messages
WINDOW dt AS(order by created_at);
