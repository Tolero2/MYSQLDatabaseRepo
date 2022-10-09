
DELIMITER $$
-- ALTER ROUTINE
DROP PROCEDURE whileSam;
DELIMITER;
/*A stored procedure for populating a database column with random numbers betwen a given range of values*/
DELIMITER $$
CREATE PROCEDURE whileSam(dt INT)
BEGIN
	-- DECLARE num1 INT;
--     DECLARE num2 INT;
--     DECLARE num3 INT;
--     DECLARE num4 INT;
-- 	DECLARE num5 INT;
--     DECLARE num6 INT;
-- 	DECLARE num7 INT;
-- 	DECLARE num8 INT;
	DECLARE numToCount INT DEFAULT dt;
   WHILE numToCount <= 999980 DO
   -- SET  num1 = FLOOR(RAND()*(50-2)+2); /*for inputting random Values between two ranges, (ie. Random value between 2 and 50 )*/
--     SET  num2 = FLOOR(RAND()*(4-1)+1); /*for inputting random Values between two ranges*/
--     SET  num3 = FLOOR(RAND()*(1-0)+0); /*for inputting random Values between two ranges*/
--     SET  num4 = FLOOR(RAND()*(1-0)+0); /*for inputting random Values between two ranges*/
--     SET  num5 = FLOOR(RAND()*(1-0)+0); /*for inputting random Values between two ranges*/
--     SET  num6 = FLOOR(RAND()*(2020-2010)+2010); /*for inputting random dates between 2010 and 2020*/
--     SET  num7 = FLOOR(RAND()*(16-1)+1); /*for inputting random Values between two ranges*/
--    -- SET  num8 = FLOOR(RAND()*(10-1)+1); /*for inputting random Values between two ranges*/
  
  INSERT INTO `Nfl`.`Passes`(`yardsGained`,
`quarter`,
`wasTouchdown`,
`wasInterception`,
`wasComplete`,
`year`,
`week`,
`idPlayers`) -- VALUES (num1,num2,num3,num4,num5,num6,num7,1);
 VALUES (FLOOR(RAND()*(50-2)+2),FLOOR(RAND()*(4-1)+1),FLOOR(RAND()*(1-0)+0),FLOOR(RAND()*(1-0)+0),FLOOR(RAND()*(1-0)+0),FLOOR(RAND()*(2020-2010)+2010),FLOOR(RAND()*(16-1)+1),1);
SET numToCount= numToCount + 1; /* number counter for while loop */
END WHILE;
END$$
DELIMITER ;

CALL whileSam(1);

SELECT CONCAT(a.`firstName`,' ',a.`lastName`) AS `Name` , p.`idClasses`,p.yardsGained,p.`quarter`,p.`week`,p.`year` from `Nfl`.`Passes` p INNER JOIN `Nfl`.`Players` a
on (p.`idPlayers`= a.`idPlayers`)
 where `year` = 2017;
 
 
 -- ALTER TABLE `Nfl`.`Passes`
--  CHANGE COLUMN `idPlayers`

-- UPDATE `Nfl`.`Passes`
-- set
-- `idPlayers` =FLOOR(RAND()*(10-1)+1);
