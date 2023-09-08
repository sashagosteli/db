SELECT * FROM semimar_4.users;

DROP PROCEDURE IF EXISTS into_users_old;
DELIMITER //
CREATE PROCEDURE into_users_old()
LANGUAGE SQL
DETERMINISTIC
SQL SECURITY DEFINER
COMMENT 'Added user_old'
BEGIN
START TRANSACTION;
    DROP TABLE users_old ;
    CREATE TABLE users_old AS
		(SELECT  id,
			firstname,
			lastname,
            email
		FROM users
		WHERE id = @user);
    COMMIT;
   
END //
DELIMITER ;
SET @user = 3;
CALL into_users_old();

SELECT * FROM users_old;




--TASK 2


DROP FUNCTION IF EXISTS hello;
SET @now = current_time();
DELIMITER //
 

 
CREATE FUNCTION `hello` (now time)
RETURNS CHAR(45) READS SQL DATA
BEGIN
 DECLARE answer varchar(45);
 DECLARE now time;
--  SET @now = current_time();
  IF (@now >= "06:00:00")AND (@now < "12:00:00") THEN 
	SET answer = "Good Morning";
 ELSEIF (@now >= "12:00:00")AND (@now < "18:00:00") THEN 
	SET answer = "Good Afternoon";
 ELSEIF (@now >= "18:00:00")AND (@now < "00:00:00") THEN 
	SET answer = "Good Evening";
 ELSEIF (@now >= "00:00:00")AND (@now < "06:00:00") THEN 
	SET answer = "Good Night" ;
 END IF;
 
RETURN answer;
 
END //
 
DELIMITER ;

SELECT hello(@now);


