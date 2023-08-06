SELECT * FROM sem3.stuff;
INSERT INTO `sem3`.`stuff` (`id`, `firstname`, `lastname`, `post`, `seniority`, `salary`, `age`) VALUES ('1', 'Вася', 'Петров', 'Начальник', '40', '100000', '60');
INSERT INTO `sem3`.`stuff` (`id`, `firstname`, `lastname`, `post`, `seniority`, `salary`, `age`) VALUES ('2', 'Петр', 'Власов', 'Начальник', '8', '70000', '30');
INSERT INTO `sem3`.`stuff` (`id`, `firstname`, `lastname`, `post`, `seniority`, `salary`, `age`) VALUES ('3', 'Катя', 'Катина', 'Инженер', '2', '70000', '25');
INSERT INTO `sem3`.`stuff` (`id`, `firstname`, `lastname`, `post`, `seniority`, `salary`, `age`) VALUES ('4', 'Саша', 'Сасин', 'Инженер', '12', '50000', '35');
INSERT INTO `sem3`.`stuff` (`id`, `firstname`, `lastname`, `post`, `seniority`, `salary`, `age`) VALUES ('5', 'Иван', 'Иванов', 'Рабочий', '40', '30000', '59');
INSERT INTO `sem3`.`stuff` (`id`, `firstname`, `lastname`, `post`, `seniority`, `salary`, `age`) VALUES ('6', 'Петр', 'Петров', 'Рабочий', '20', '25000', '40');
INSERT INTO `sem3`.`stuff` (`id`, `firstname`, `lastname`, `post`, `seniority`, `salary`, `age`) VALUES ('7', 'Сидр', 'Сидоров', 'Рабочий', '10', '20000', '35');
INSERT INTO `sem3`.`stuff` (`id`, `firstname`, `lastname`, `post`, `seniority`, `salary`, `age`) VALUES ('8', 'Антон', 'Антонов', 'Рабочий', '8', '19000', '28');
INSERT INTO `sem3`.`stuff` (`id`, `firstname`, `lastname`, `post`, `seniority`, `salary`, `age`) VALUES ('9', 'Юрий', 'Юрков', 'Рабочий', '5', '15000', '25');
INSERT INTO `sem3`.`stuff` (`id`, `firstname`, `lastname`, `post`, `seniority`, `salary`, `age`) VALUES ('10', 'Максим', 'Максимов', 'Рабочий', '2', '11000', '22');
INSERT INTO `sem3`.`stuff` (`id`, `firstname`, `lastname`, `post`, `seniority`, `salary`, `age`) VALUES ('11', 'Юрий', 'Галкин', 'Рабочий', '3', '12000', '24');
INSERT INTO `sem3`.`stuff` (`id`, `firstname`, `lastname`, `post`, `seniority`, `salary`, `age`) VALUES ('12', 'Людмила', 'Маркина', 'Уборщик', '10', '10000', '49');
#1
SELECT * FROM stuff
ORDER BY salary;

SELECT * FROM stuff
ORDER BY salary DESC;

#2



