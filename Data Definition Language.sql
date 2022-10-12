USE `Nfl`;


ALTER TABLE `Nfl`.`Passes`
 ADD FOREIGN KEY (`idPlayers`) REFERENCES `Nfl`.`Players`(`idPlayers`);


ALTER TABLE `Nfl`.`Passes`
CHANGE COLUMN `idPlayers` `idPlayers` INT NOT NULL ;


DESCRIBE `Passes`; -- Description of the Tables (ie. all columns, datatype and contraints



/*Creating the Schedule Table to split the NFL Datatbase to 3rd Norm Form*/
CREATE TABLE `Nfl`.`Schedule`(
`idSched` INT AUTO_INCREMENT,
`year` INT,
`week` INT,
PRIMARY KEY(idSched)
  );
