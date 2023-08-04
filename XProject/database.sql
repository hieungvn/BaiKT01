-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.2.0-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table xproject.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table xproject.employees: ~50 rows (approximately)
REPLACE INTO `employees` (`id`, `name`, `address`, `salary`, `action`) VALUES
	(1, 'Katinka Gherardelli', '84665 Drewry Center', 9893, 'View,Edit,Delete'),
	(2, 'Merola Drescher', '8 Ludington Terrace', 1561, 'View,Edit,Delete'),
	(3, 'Jelene Siely', '5 Basil Pass', 9549, 'View,Edit,Delete'),
	(4, 'Oates Vasilmanov', '153 Delaware Drive', 2545, 'View,Edit,Delete'),
	(5, 'Delinda Schistl', '47 Mendota Park', 6761, 'View,Edit,Delete'),
	(6, 'Codee Bratcher', '38 Debs Drive', 6722, 'View,Edit,Delete'),
	(7, 'Bartlet Turfs', '3 Mesta Parkway', 2951, 'View,Edit,Delete'),
	(8, 'Almire Pitblado', '954 West Circle', 2699, 'View,Edit,Delete'),
	(9, 'Roselia Greasley', '1 Bonner Park', 6343, 'View,Edit,Delete'),
	(10, 'Reece Coslitt', '85 Spenser Trail', 3460, 'View,Edit,Delete'),
	(11, 'Jennette Lowis', '7 Mcguire Hill', 9410, 'View,Edit,Delete'),
	(12, 'L;urette Chaikovski', '9 School Street', 9110, 'View,Edit,Delete'),
	(13, 'Donavon Napper', '34 Browning Drive', 7373, 'View,Edit,Delete'),
	(14, 'Auria Jobey', '0493 Dryden Court', 2506, 'View,Edit,Delete'),
	(15, 'Dona Malby', '26 Hauk Road', 1720, 'View,Edit,Delete'),
	(16, 'Imogen Fagan', '688 Barnett Lane', 7858, 'View,Edit,Delete'),
	(17, 'Gwenora Daventry', '25842 Forster Street', 3938, 'View,Edit,Delete'),
	(18, 'Erin Buesden', '17 Corry Way', 9082, 'View,Edit,Delete'),
	(19, 'Randee Guslon', '4704 Mayer Point', 1847, 'View,Edit,Delete'),
	(20, 'Kendre Goodhand', '6873 Park Meadow Drive', 3854, 'View,Edit,Delete'),
	(21, 'Rae Exter', '955 Sutherland Junction', 8158, 'View,Edit,Delete'),
	(22, 'Heddie Kuhl', '4 Duke Trail', 3220, 'View,Edit,Delete'),
	(23, 'Galen Wallworth', '80674 Oriole Junction', 1260, 'View,Edit,Delete'),
	(24, 'Boycey Lynock', '36 Lyons Alley', 1037, 'View,Edit,Delete'),
	(25, 'Megen Norres', '08 Nova Lane', 9883, 'View,Edit,Delete'),
	(26, 'Cacilia Nucator', '50731 Clove Hill', 1507, 'View,Edit,Delete'),
	(27, 'Lennard Maynard', '651 Vahlen Way', 3292, 'View,Edit,Delete'),
	(28, 'Maryann Pinckney', '949 Meadow Valley Court', 5049, 'View,Edit,Delete'),
	(29, 'Shanna Geerits', '0 Gerald Parkway', 2211, 'View,Edit,Delete'),
	(30, 'Bernete Kinsman', '1163 Sullivan Junction', 5540, 'View,Edit,Delete'),
	(31, 'Ernesto Walbridge', '91842 Buena Vista Road', 2180, 'View,Edit,Delete'),
	(32, 'Jessica Smeal', '522 East Plaza', 8039, 'View,Edit,Delete'),
	(33, 'Kelila Gitting', '91 Caliangt Alley', 5693, 'View,Edit,Delete'),
	(34, 'Sybila Shakle', '86 Loomis Park', 6299, 'View,Edit,Delete'),
	(35, 'Ottilie Bosanko', '69462 Anthes Point', 1650, 'View,Edit,Delete'),
	(36, 'Bastien Hoodless', '377 Golf Street', 7929, 'View,Edit,Delete'),
	(37, 'Lem Mapstone', '7450 Mayer Alley', 1385, 'View,Edit,Delete'),
	(38, 'Thom Daud', '754 High Crossing Junction', 5712, 'View,Edit,Delete'),
	(39, 'Odetta MacGaughie', '81229 Stone Corner Point', 1409, 'View,Edit,Delete'),
	(40, 'Eilis O\'Brogan', '8 Washington Junction', 3815, 'View,Edit,Delete'),
	(41, 'Glennie Bindin', '6 Sherman Hill', 8184, 'View,Edit,Delete'),
	(42, 'Vivia Chaffen', '68992 Jenifer Street', 1335, 'View,Edit,Delete'),
	(43, 'Katinka Falvey', '4185 Independence Junction', 5289, 'View,Edit,Delete'),
	(44, 'Giff Billing', '35313 Di Loreto Street', 3141, 'View,Edit,Delete'),
	(45, 'Ossie Stoneman', '45 Ludington Lane', 6095, 'View,Edit,Delete'),
	(46, 'Franny Pulbrook', '5050 Monterey Parkway', 2243, 'View,Edit,Delete'),
	(47, 'Toddy Hintze', '8 Spohn Junction', 5411, 'View,Edit,Delete'),
	(48, 'Avril Geldeford', '20492 Vermont Circle', 9614, 'View,Edit,Delete'),
	(49, 'Madalena McGivena', '99 Waubesa Terrace', 5766, 'View,Edit,Delete'),
	(50, 'Gerrie Leworthy', '81 North Junction', 6147, 'View,Edit,Delete');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
