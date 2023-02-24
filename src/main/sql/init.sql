
CREATE DATABASE lecture default CHARACTER SET UTF8; 

use lecture;

CREATE TABLE `dept` (
  `DEPTNO` int DEFAULT NULL,
  `DNAME` varchar(14) DEFAULT NULL,
  `LOC` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO dept VALUES (10,'ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES (20,'RESEARCH','DALLAS');
INSERT INTO dept VALUES (30,'SALES','CHICAGO');
INSERT INTO dept VALUES (40,'OPERATIONS','BOSTON');
INSERT INTO dept VALUES (50,'블루','부산');


create user 'scott'@'locahost' identified by 'tiger';
create user 'scott'@'%' identified by 'tiger';
GRANT ALL privileges ON *.* TO 'scott'@'locahost';
GRANT ALL privileges ON *.* TO 'scott'@'%';
flush privileges;
