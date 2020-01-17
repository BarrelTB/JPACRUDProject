-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema babysupplies
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `babysupplies` ;

-- -----------------------------------------------------
-- Schema babysupplies
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `babysupplies` DEFAULT CHARACTER SET utf8 ;
USE `babysupplies` ;

-- -----------------------------------------------------
-- Table `item`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `item` ;

CREATE TABLE IF NOT EXISTS `item` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `description` VARCHAR(10000) NULL,
  `Manufacturer` VARCHAR(100) NULL,
  `Link` VARCHAR(2000) NULL,
  `AgeRange` VARCHAR(45) NOT NULL,
  `purchase_year` INT NOT NULL,
  `num_available` INT NOT NULL,
  `quality` ENUM('NEW', 'LIKE NEW', 'GOOD', 'USED') NOT NULL,
  `price` DOUBLE NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS itemOwner@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'itemOwner'@'localhost' IDENTIFIED BY 'itemOwner';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'itemOwner'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `item`
-- -----------------------------------------------------
START TRANSACTION;
USE `babysupplies`;
INSERT INTO `item` (`id`, `name`, `description`, `Manufacturer`, `Link`, `AgeRange`, `purchase_year`, `num_available`, `quality`, `price`) VALUES (1, 'Graco FastAction Fold Jogging Stroller', 'FastAction Fold Jogging Stroller accepts all Graco infant car seats with a secure one-step attachment', 'Graco', 'https://www.amazon.com/Graco-FastAction-Jogger-Stroller-Gotham/dp/B00UVW45Q2/ref=sr_1_1_sspa?keywords=stroller&qid=1579293493&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExUUYwVU02UDM5UTYmZW5jcnlwdGVkSWQ9QTA5MTE3NDAxOVNYR1pPOU9VM0E3JmVuY3J5cHRlZEFkSWQ9QTAwNTQzOTM1VDcyNzc4Vk1XQTcmd2lkZ2V0TmFtZT1zcF9hdGYmYWN0aW9uPWNsaWNrUmVkaXJlY3QmZG9Ob3RMb2dDbGljaz10cnVl', 'For children up to 50 lbs', 2018, 2, 'GOOD', 100.00);
INSERT INTO `item` (`id`, `name`, `description`, `Manufacturer`, `Link`, `AgeRange`, `purchase_year`, `num_available`, `quality`, `price`) VALUES (2, 'Summer 3Dlite Convenience  Stroller', 'Lightweight Stroller with Aluminum Frame, Large Seat Area, 4 Position Recline, Extra Large Storage Basket – Infant Stroller for Travel and More', 'Summer Infant', 'https://www.amazon.com/Summer-Infant-Lite-Convenience-Stroller/dp/B00O20OCVC/ref=sr_1_3?keywords=stroller&qid=1579293948&sr=8-3', 'For children up to 50 lbs', 2015, 1, 'USED', 30.00);
INSERT INTO `item` (`id`, `name`, `description`, `Manufacturer`, `Link`, `AgeRange`, `purchase_year`, `num_available`, `quality`, `price`) VALUES (3, 'Maxi-Cosi Pria 85 Convertible Car Seat', 'This extra-comfortable, LATCH-equipped Maxi-Cosi car seat offers a first-class ride, rear-facing from 14 to 40 pounds and 22 to 85 pounds forward-facing.', 'Maxi-Cosi', 'https://www.amazon.com/Maxi-Cosi-Pria-Convertible-Devoted-Black/dp/B00JBYPKE2/ref=sxin_3_ac_d_rm?ac_md=2-1-bWF4aSBjb3NpIGNhciBzZWF0-ac_d_rm&cv_ct_cx=car+seat&keywords=car+seat&pd_rd_i=B00JBYPKE2&pd_rd_r=0e44b4da-52ae-4d1a-9e63-e9fd4bcdcbd0&pd_rd_w=qJOVD&pd_rd_wg=PW4FV&pf_rd_p=6d29ef56-fc35-411a-8a8e-7114f01518f7&pf_rd_r=CD2YAZZ57GF733P4QV74&psc=1&qid=1579294045', 'For children up to 85 lbs', 2019, 1, 'LIKE NEW', 175.00);
INSERT INTO `item` (`id`, `name`, `description`, `Manufacturer`, `Link`, `AgeRange`, `purchase_year`, `num_available`, `quality`, `price`) VALUES (4, 'Dreamer Bassinet', 'Sleep soundly knowing that your baby is safer and comfortable in the Beside Me Dreamer Bassinet & Bedside Sleeper. In the Bassinet mode, your little one is surrounded by breathable mesh walls that keep air circulating while providing her with her own private sleeping area. It is lightweight enough to move from room to room for convenience. For Bedside Sleeper mode, simply unzip the side panel closest to your bed and snug the Beside Me Dreamer right up to the side. The attached straps safely secure the Bedside Sleeper to your adult bed, ensuring it stays snug and in place. Easily lean over to nurse, comfort or just check on your baby during the night, knowing she is right there beside you. For added comfort, the 6-position height adjustment can be used to adapt the sleeper height to most adult beds.', 'Baby Delight', 'https://www.amazon.com/Beside-Dreamer-Bassinet-Bedside-Sleeper/dp/B07FYN5FS9/ref=sr_1_1_sspa?keywords=bassinet&qid=1579294156&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEzUzVRMTE0QTcxNEUyJmVuY3J5cHRlZElkPUExMDIwMDQ0NU8zRTBEUFg4MDA4JmVuY3J5cHRlZEFkSWQ9QTAwODAyNzMzOUk2WTIxOTlTRjdIJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==', 'For use up to 20 lbs or 5 months', 2017, 2, 'GOOD', 150.00);
INSERT INTO `item` (`id`, `name`, `description`, `Manufacturer`, `Link`, `AgeRange`, `purchase_year`, `num_available`, `quality`, `price`) VALUES (5, 'Jayden 4-in-1 Mini Convertible Crib And Changer', 'Dream On Me Jayden 4-in-1 mini Convertible crib with Changer is a beautifully constructed multipurpose crib which offers a sturdy rails for safety, three level mattress support, 1” Changing pad. The changing table is equipped with a changing pad and restraining strap with easy release buckle to secure baby safely in place. It is the perfect alternative for small spaces without giving up fashion, function or safety. Once your child has outgrown the crib, it can be change into a day bed, the changing table is detachable and this mini crib can be converted to a twin bed with optional bedrails (sold separately). The crib meets the CPSC and ASTM standard .', 'Dream On Me', 'https://www.amazon.com/Dream-Jayden-Mini-Convertible-Changer/dp/B078WTVBVW/ref=sxin_5_ac_d_rm?ac_md=4-2-Y3JpYiB3aXRoIGNoYW5naW5nIHRhYmxl-ac_d_rm&cv_ct_cx=crib&keywords=crib&pd_rd_i=B078WTVBVW&pd_rd_r=eed18b09-ae5b-4c6e-ab8b-6b88b81670e5&pd_rd_w=PVZr2&pd_rd_wg=ySSfl&pf_rd_p=6d29ef56-fc35-411a-8a8e-7114f01518f7&pf_rd_r=XHBFRD4JY79VJMB53RN1&psc=1&qid=1579294305', 'For children ages 1-3', 2018, 1, 'NEW', 225.00);

COMMIT;

