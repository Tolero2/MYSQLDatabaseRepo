--  -- use Nfl;
/*Using a Common table expression to save a calculated field and calling it immidiately in conjuction with the original table using Join clause */
 
WITH cte1 AS (SELECT `idPlayers`, SUM(`yardsGained`) AS `Sum of Yards in 2017` FROM `Nfl`.`Passes`
WHERE `year`= 2017 AND `quarter`= 2 AND `week`=5 
GROUP BY `idPlayers`) -- AND `fie`= 'Payon Manning')
SELECT CONCAT(p.`firstName`, p.`lastName`) AS `Name`,c.`Sum of Yards in 2017` FROM `Nfl`.`Players` p JOIN cte1 c
on(p.`idPlayers`=c.`idPlayers`);




-- SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS;

