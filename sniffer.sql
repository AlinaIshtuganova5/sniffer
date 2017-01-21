/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


CREATE DATABASE IF NOT EXISTS `sniffer` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sniffer`;

CREATE TABLE IF NOT EXISTS sniffresult (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  referer varchar(50) DEFAULT NULL,
  hijackedurl varchar(50) DEFAULT NULL,
  author varchar(50) DEFAULT NULL,
  sniffdate timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS users (
  user_name varchar(10) NOT NULL,
  password varchar(10) NOT NULL,
  PRIMARY KEY (user_name)
);

CREATE TABLE IF NOT EXISTS databasechangelog (
  ID varchar(25) NOT NULL,
  AUTHOR varchar(25) NOT NULL,
  FILENAME varchar(25) NOT NULL,
  DATEEXECUTED datetime NOT NULL,
  ORDEREXECUTED int(110) NOT NULL,
  EXECTYPE varchar(1) NOT NULL,
  MD5SUM varchar(3) DEFAULT NULL,
  DESCRIPTION varchar(25) DEFAULT NULL,
  COMMENTS varchar(25) DEFAULT NULL,
  TAG varchar(25) DEFAULT NULL,
  LIQUIBASE varchar(22) DEFAULT NULL,
  CONTEXTS varchar(25) DEFAULT NULL,
  LABELS varchar(25) DEFAULT NULL
) ;


/*!40000 ALTER TABLE `databasechangelog` DISABLE KEYS */;
INSERT INTO `databasechangelog` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`) VALUES
  ('1476220990929-1', 'eljah32 (generated)', 'src/main/resources/liquibase/v-1.0/changelog-v.1.0-init-11-10-2016.xml', '2016-10-19 22:56:27', 1, 'EXECUTED', '7:5da484f31121e22b65a7479f1cb396b9', 'createTable', '', NULL, '3.4.1', NULL, NULL);
/*!40000 ALTER TABLE `databasechangelog` ENABLE KEYS */;


CREATE TABLE IF NOT EXISTS databasechangeloglock (
  ID int(11) NOT NULL,
  LOCKED bit(10) NOT NULL,
  LOCKGRANTED datetime DEFAULT NULL,
  LOCKEDBY varchar(25) DEFAULT NULL,
  PRIMARY KEY (ID)
);

/*!40000 ALTER TABLE `databasechangeloglock` DISABLE KEYS */;
INSERT INTO `databasechangeloglock` (`ID`, `LOCKED`, `LOCKGRANTED`, `LOCKEDBY`) VALUES
  (1, b'0', NULL, NULL);
/*!40000 ALTER TABLE `databasechangeloglock` ENABLE KEYS */;


/*!40000 ALTER TABLE sniffresult DISABLE KEYS */;
INSERT INTO `sniffresult` (id, referer, hijackedurl, author, sniffdate) VALUES
  (1, NULL, NULL, 'user', '2017-01-20 20:45:26.000000'),
  (2, NULL, NULL, 'hacker', '2017-01-20 20:45:48.000000'),
  (3, NULL, NULL, 'user1', '2017-01-20 20:45:51.000000'),
  (4, NULL, NULL, 'hacker1', '2017-01-20 20:46:20.000000'),
  (5, NULL, NULL, 'admin', '2017-01-20 20:46:45.000000'),
  (6, NULL, NULL, 'hacker', '2017-01-20 20:59:26.000000');
/*!40000 ALTER TABLE `sniffresult` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_name` varchar(20) NOT NULL,
  `role_name` varchar(20) NOT NULL,
  PRIMARY KEY (`user_name`,`role_name`)
);

/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`user_name`, `role_name`) VALUES
  ('hacker', 'hacker'),
  ('hacker1', 'hacker'),
  ('user', 'admin'),
  ('user1', 'admin');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
