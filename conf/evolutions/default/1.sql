# --- !Ups


use `FORMDEMO`;


DROP TABLE if exists EMPLOYEE_DETAIL;
DROP TABLE if exists EMPLOYEE;


CREATE  TABLE `FORMDEMO`.`EMPLOYEE` (
  `EMPLOYEE_ID` INT NOT NULL AUTO_INCREMENT ,
  `EMAIL` VARCHAR(45) NOT NULL ,
  `PASSWORD` VARCHAR(100) NOT NULL ,
  PRIMARY KEY (`EMPLOYEE_ID`) )
ENGINE = InnoDB;

CREATE  TABLE `FORMDEMO`.`EMPLOYEE_DETAIL` (
  `EMPLOYEE_DETAIL_ID` INT NOT NULL AUTO_INCREMENT ,
  `EMPLOYEE_ID` INT NOT NULL ,
  `NAME` VARCHAR(45) NOT NULL ,
  `DESIGNATION` VARCHAR(45) NOT NULL ,
  `ADDRESS` VARCHAR(100) NOT NULL ,
  `CONTACT_NO` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`EMPLOYEE_DETAIL_ID`) ,
  INDEX `fk_EMPLOYEE_DETAIL_1_idx` (`EMPLOYEE_ID` ASC) ,
  CONSTRAINT `fk_EMPLOYEE_DETAIL_1`
    FOREIGN KEY (`EMPLOYEE_ID` )
    REFERENCES `FORMDEMO`.`EMPLOYEE` (`EMPLOYEE_ID` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

ALTER TABLE `FORMDEMO`.`EMPLOYEE_DETAIL` CHANGE COLUMN `NAME` `NAME` VARCHAR(100) NOT NULL  ;
ALTER TABLE `FORMDEMO`.`EMPLOYEE_DETAIL` CHANGE COLUMN `NAME` `NAME` VARCHAR(80) NOT NULL  ;


# --- !Downs
 
