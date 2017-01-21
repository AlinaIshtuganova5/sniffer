CREATE DATABASE IF NOT EXISTS sniffer;
USE `sniffer`;

CREATE TABLE IF NOT EXISTS sniffresult (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  referer varchar(1000) DEFAULT NULL,
  hijackedurl varchar(1000) DEFAULT NULL,
  author varchar(1000) DEFAULT NULL,
  sniffdate timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(10) ON UPDATE CURRENT_TIMESTAMP(10),
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS users (
  user_name varchar(20) NOT NULL,
  password varchar(32) NOT NULL,
  PRIMARY KEY (user_name)
);

CREATE TABLE IF NOT EXISTS databasechangelog (
  ID varchar(255) NOT NULL,
  AUTHOR varchar(255) NOT NULL,
  FILENAME varchar(255) NOT NULL,
  DATEEXECUTED datetime NOT NULL,
  ORDEREXECUTED int(11) NOT NULL,
  EXECTYPE varchar(10) NOT NULL,
  MD5SUM varchar(35) DEFAULT NULL,
  DESCRIPTION varchar(255) DEFAULT NULL,
  COMMENTS varchar(255) DEFAULT NULL,
  TAG varchar(255) DEFAULT NULL,
  LIQUIBASE varchar(20) DEFAULT NULL,
  CONTEXTS varchar(255) DEFAULT NULL,
  LABELS varchar(255) DEFAULT NULL
);



INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, `EXECTYPE`, MD5SUM, DESCRIPTION, COMMENTS, TAG, LIQUIBASE, CONTEXTS, LABELS) VALUES
  ('1476220990929-1', 'eljah32 (generated)', 'src/main/resources/liquibase/v-1.0/changelog-v.1.0-init-11-10-2016.xml', '2016-10-19 22:56:27', 1, 'EXECUTED', '7:5da484f31121e22b65a7479f1cb396b9', 'createTable', '', NULL, '3.4.1', NULL, NULL);



CREATE TABLE IF NOT EXISTS databasechangeloglock (
  ID int(11) NOT NULL,
  LOCKED bit(1) NOT NULL,
  LOCKGRANTED datetime DEFAULT NULL,
  LOCKEDBY varchar(255) DEFAULT NULL,
  PRIMARY KEY (ID)
);


INSERT INTO `databasechangeloglock` (ID, LOCKED, LOCKGRANTED, LOCKEDBY) VALUES
  (1, b'0', NULL, NULL);

INSERT INTO `sniffresult` (id, referer, hijackedurl, author, sniffdate) VALUES
  (1, NULL, NULL, 'user', '2017-01-20 20:45:26.000000'),
  (2, NULL, NULL, 'hacker', '2017-01-20 20:45:48.000000'),
  (3, NULL, NULL, 'user1', '2017-01-20 20:45:51.000000'),
  (4, NULL, NULL, 'hacker1', '2017-01-20 20:46:20.000000'),
  (5, NULL, NULL, 'admin', '2017-01-20 20:46:45.000000'),
  (6, NULL, NULL, 'hacker', '2017-01-20 20:59:26.000000');


INSERT INTO `users` (`user_name`, `password`) VALUES
  ('user', '9ef8295458b745af7a392ab23802ba7b'),
  ('hacker1', '1b2b4c6643b5c96a07abdf16fb2220fe'),
  ('hacker', 'b9049640fdab0fea20d2af6ac2965405'),
  ('user1', '24c9e15e52afc47c225b757e7bee1f9d');

CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_name` varchar(20) NOT NULL,
  `role_name` varchar(20) NOT NULL,
  PRIMARY KEY (`user_name`,`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `user_roles` (`user_name`, `role_name`) VALUES
  ('hacker', 'hacker'),
  ('hacker1', 'hacker'),
  ('user', 'admin'),
  ('user1', 'admin');

