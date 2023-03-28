mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.17 sec)

mysql> CREATE DATABASE AddressBookServiceDB;
Query OK, 1 row affected (0.04 sec)

mysql> show databases;
+----------------------+
| Database             |
+----------------------+
| addressbookservicedb |
| information_schema   |
| mysql                |
| performance_schema   |
| sys                  |
+----------------------+
5 rows in set (0.01 sec)
mysql> USE addressBookServiceDB;
Database changed
mysql> show databases;
+----------------------+
| Database             |
+----------------------+
| addressbookservicedb |
| information_schema   |
| mysql                |
| performance_schema   |
| sys                  |
+----------------------+
5 rows in set (0.02 sec)

mysql> select database();
+----------------------+
| database()           |
+----------------------+
| addressbookservicedb |
+----------------------+
1 row in set (0.00 sec)

mysql> CREATE TABLE contactService
    -> (
    -> first_Name  VARCHAR(150) NOT NULL,
    -> last_Name   VARCHAR(150) NOT NULL,
    -> address     VARCHAR(150) NOT NULL,
    -> city        VARCHAR(100) NOT NULL,
    -> state       VARCHAR(100) NOT NULL,
    -> zip         INT unsigned NOT NULL,
    -> contact     INT          NOT NULL,
    -> email       VARCHAR(50)  NOT NULL
    -> );
Query OK, 0 rows affected (0.17 sec)


mysql> DESC contactService;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| first_Name | varchar(150) | NO   |     | NULL    |       |
| last_Name  | varchar(150) | NO   |     | NULL    |       |
| address    | varchar(150) | NO   |     | NULL    |       |
| city       | varchar(100) | NO   |     | NULL    |       |
| state      | varchar(100) | NO   |     | NULL    |       |
| zip        | int unsigned | NO   |     | NULL    |       |
| contact    | int          | NO   |     | NULL    |       |
| email      | varchar(50)  | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
8 rows in set (0.03 sec)