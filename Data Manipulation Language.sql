-- USE Nfl;
SELECT * from `Nfl`.`Players`;
DELIMITER $$
/*Adding 9 rows Data to the Players Table*/
-- INSERT INTO `Nfl`.`Players`
-- (
-- `firstName`,
-- `lastName`)
-- VALUES
-- ('Adrian', 'Pupil'),
-- ('Felix','Lewis'),
-- ('Alfred', 'Shanon'),
-- ('Roberto', 'Carlos'),
-- ('Jack', 'Daniels'),
-- ('Uther', 'Pendragron'),
-- ('Amir', 'Ahmad'),
-- ('Aaron', 'Jeffery'),
-- ('Denis', 'White');
DELIMITER ;
DELIMITER $$
/*Adding 9 rows Data to the Passes Table in first norm form*/

-- INSERT INTO `Nfl`.`Passes`
-- (
-- `quarterback`,
-- `yardsGained`,
-- `quarter`,
-- `wasTouchdown`,
-- `wasInterception`,
-- `wasComplete`,
-- `year`,
-- `week`)
-- VALUES
-- ('Payon Manning',84, 1, 0, 0, 1 , 2017,5 ),
-- ('Payon Manning',8, 2, 0, 0, 1 , 2017,5 ),
-- ('Payon Manning',12, 3, 0, 0, 1 , 2017,5 ),
-- ('Payon Manning',89, 4, 0, 0, 1 , 2016,5 ),
-- ('Payon Manning',87, 2, 0, 0, 1 , 2015,5 ),
-- ('Payon Manning',86, 4, 0, 0, 1 , 2015,5 ),
-- ('Payon Manning',87, 1, 0, 0, 1 , 2016,5 );
DELIMITER ;

DELIMITER $$
/*Update the values of columns in Passes table where column(idClasses)=2 */

UPDATE `Nfl`.`Passes`
SET
quaterback = 'Peyton Manning', `completions` = 1, `attempts`= 7,`yards` = 0,`touchdowns` = 0,`interceptions`= 1
WHERE (Nfl.Passes.idClasses = 2);
DELIMITER ;

DELIMITER $$
/*Update the values of foreign Key column(idPlayers) in Passes table with random(round) number values between 10 and 1 to represent the number of players in the players */
-- UPDATE `Nfl`.`Passes`
-- set
-- `idPlayers` =FLOOR(RAND()*(10-1)+1);
DELIMITER ;
TRUNCATE TABLE `Address_Book`.`People`;
DELIMITER $$
