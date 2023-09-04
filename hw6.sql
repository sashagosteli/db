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
