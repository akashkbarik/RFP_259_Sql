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

mysql> insert into contactService(first_name,last_Name,address,city,state,zip,contact,email) values
    ->  ( 'Akash','Barik','Angul','Angul','Odisha',123456,1234567890,'akashak403@gmail.com' );
Query OK, 1 row affected (0.04 sec)

mysql> insert into contactService(first_name,last_Name,address,city,state,zip,contact,email) values
    -> ( 'Roxy','Sen','Mumbai','Mumbai','Maharastra',234567,0987654321,'Roxy@gmail.com' ),
    ->
    -> ( 'Toxy','Sen','Mumbai','Mumbai','Maharastra',234567,0987654321,'Roxy@gmail.com' ),
    ->  ( 'jkash','Barik','Angul','Angul','Odisha',123456,1234567890,'akashak403@gmail.com' );
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from contactService
    -> ;
+------------+-----------+---------+--------+------------+--------+------------+----------------------+
| first_Name | last_Name | address | city   | state      | zip    | contact    | email                |
+------------+-----------+---------+--------+------------+--------+------------+----------------------+
| Akash      | Barik     | Angul   | Angul  | Odisha     | 123456 | 1234567890 | akashak403@gmail.com |
| Roxy       | Sen       | Mumbai  | Mumbai | Maharastra | 234567 |  987654321 | Roxy@gmail.com       |
| Toxy       | Sen       | Mumbai  | Mumbai | Maharastra | 234567 |  987654321 | Roxy@gmail.com       |
| jkash      | Barik     | Angul   | Angul  | Odisha     | 123456 | 1234567890 | akashak403@gmail.com |
+------------+-----------+---------+--------+------------+--------+------------+----------------------+
4 rows in set (0.01 sec)
mysql> update contactService
    -> SET city='bhubanehswar'
    -> WHERE first_Name='Akash';
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from contactService
    -> ;
+------------+-----------+---------+--------------+------------+--------+------------+----------------------+
| first_Name | last_Name | address | city         | state      | zip    | contact    | email                |
+------------+-----------+---------+--------------+------------+--------+------------+----------------------+
| Akash      | Barik     | Angul   | bhubanehswar | Odisha     | 123456 | 1234567890 | akashak403@gmail.com |
| Roxy       | Sen       | Mumbai  | Mumbai       | Maharastra | 234567 |  987654321 | Roxy@gmail.com       |
| Toxy       | Sen       | Mumbai  | Mumbai       | Maharastra | 234567 |  987654321 | Roxy@gmail.com       |
| jkash      | Barik     | Angul   | Angul        | Odisha     | 123456 | 1234567890 | akashak403@gmail.com |
+------------+-----------+---------+--------------+------------+--------+------------+----------------------+
4 rows in set (0.01 sec)
mysql> DELETE FROM contactService
    -> WHERE first_name='Toxy';
Query OK, 1 row affected (0.01 sec)

mysql> select * from contactService;
+------------+-----------+---------+--------------+------------+--------+------------+----------------------+
| first_Name | last_Name | address | city         | state      | zip    | contact    | email                |
+------------+-----------+---------+--------------+------------+--------+------------+----------------------+
| Akash      | Barik     | Angul   | bhubanehswar | Odisha     | 123456 | 1234567890 | akashak403@gmail.com |
| Roxy       | Sen       | Mumbai  | Mumbai       | Maharastra | 234567 |  987654321 | Roxy@gmail.com       |
| jkash      | Barik     | Angul   | Angul        | Odisha     | 123456 | 1234567890 | akashak403@gmail.com |
+------------+-----------+---------+--------------+------------+--------+------------+----------------------+
3 rows in set (0.00 sec)
mysql> select * from contactService
    -> ORDER BY city,state;
+------------+-----------+---------+--------------+------------+--------+------------+----------------------+
| first_Name | last_Name | address | city         | state      | zip    | contact    | email                |
+------------+-----------+---------+--------------+------------+--------+------------+----------------------+
| jkash      | Barik     | Angul   | Angul        | Odisha     | 123456 | 1234567890 | akashak403@gmail.com |
| Akash      | Barik     | Angul   | bhubanehswar | Odisha     | 123456 | 1234567890 | akashak403@gmail.com |
| Roxy       | Sen       | Mumbai  | Mumbai       | Maharastra | 234567 |  987654321 | Roxy@gmail.com       |
+------------+-----------+---------+--------------+------------+--------+------------+----------------------+
3 rows in set (0.02 sec)
mysql> SELECT COUNT(city)
    -> FROM contactService;
+-------------+
| COUNT(city) |
+-------------+
|           3 |
+-------------+
1 row in set (0.04 sec)

mysql> SELECT COUNT(state)
    -> FROM contactService;
+--------------+
| COUNT(state) |
+--------------+
|            3 |
+--------------+
1 row in set (0.01 sec)
mysql> insert into contactService(first_name,last_Name,address,city,state,zip,contact,email) values
    -> ( 'Bikash','Barik','Angul','Angul','Maharastra',234567,0987654321,'Roxy@gmail.com' );
Query OK, 1 row affected (0.01 sec)

mysql> select * from contactService
    -> where city='Angul'
    -> order by first_Name;
+------------+-----------+---------+-------+------------+--------+------------+----------------------+
| first_Name | last_Name | address | city  | state      | zip    | contact    | email                |
+------------+-----------+---------+-------+------------+--------+------------+----------------------+
| Bikash     | Barik     | Angul   | Angul | Maharastra | 234567 |  987654321 | Roxy@gmail.com       |
| jkash      | Barik     | Angul   | Angul | Odisha     | 123456 | 1234567890 | akashak403@gmail.com |
+------------+-----------+---------+-------+------------+--------+------------+----------------------+
2 rows in set (0.00 sec)

mysql> update contactService
    -> set type ='family'
    -> where first_Name='Akash';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update contactService
    -> set type ='family'
    -> where city='Angul';
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> update contactService
    -> set type ='friend'
    -> where city!='Angul';
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select * from contactService;
+------------+-----------+---------+--------------+------------+--------+------------+----------------------+--------+
| first_Name | last_Name | address | city         | state      | zip    | contact    | email                | type   |
+------------+-----------+---------+--------------+------------+--------+------------+----------------------+--------+
| Akash      | Barik     | Angul   | bhubanehswar | Odisha     | 123456 | 1234567890 | akashak403@gmail.com | friend |
| Roxy       | Sen       | Mumbai  | Mumbai       | Maharastra | 234567 |  987654321 | Roxy@gmail.com       | friend |
| jkash      | Barik     | Angul   | Angul        | Odisha     | 123456 | 1234567890 | akashak403@gmail.com | family |
| Bikash     | Barik     | Angul   | Angul        | Maharastra | 234567 |  987654321 | Roxy@gmail.com       | family |
+------------+-----------+---------+--------------+------------+--------+------------+----------------------+--------+
mysql> select type , count(*)
    -> from contactService
    -> group by type;
+--------+----------+
| type   | count(*) |
+--------+----------+
| friend |        2 |
| family |        2 |
+--------+----------+
2 rows in set (0.01 sec)

mysql> select * from contactservice;
+------------+-----------+---------+--------+------------+--------+------------+----------------------+--------+
| first_Name | last_Name | address | city   | state      | zip    | contact    | email                | type   |
+------------+-----------+---------+--------+------------+--------+------------+----------------------+--------+
| Roxy       | Sen       | Mumbai  | Mumbai | Maharastra | 234567 |  987654321 | Roxy@gmail.com       | friend |
| jkash      | Barik     | Angul   | Angul  | Odisha     | 123456 | 1234567890 | akashak403@gmail.com | family |
| Bikash     | Barik     | Angul   | Angul  | Maharastra | 234567 |  987654321 | Roxy@gmail.com       | family |
| Akash      | Barik     | kochi   | thiru  | kerla      | 123456 | 1234567890 | bdj@abc.com          | friend |
+------------+-----------+---------+--------+------------+--------+------------+----------------------+--------+
4 rows in set (0.02 sec)

mysql> insert into family (select * from contactservice where type ='family');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from family;
+------------+-----------+---------+-------+------------+--------+------------+----------------------+--------+
| first_Name | last_Name | address | city  | state      | zip    | contact    | email                | type   |
+------------+-----------+---------+-------+------------+--------+------------+----------------------+--------+
| jkash      | Barik     | Angul   | Angul | Odisha     | 123456 | 1234567890 | akashak403@gmail.com | family |
| Bikash     | Barik     | Angul   | Angul | Maharastra | 234567 |  987654321 | Roxy@gmail.com       | family |
+------------+-----------+---------+-------+------------+--------+------------+----------------------+--------+
2 rows in set (0.00 sec)


mysql> insert into friend (select * from contactservice where type ='friend');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from friend;
+------------+-----------+---------+--------+------------+--------+------------+----------------+--------+
| first_Name | last_Name | address | city   | state      | zip    | contact    | email          | type   |
+------------+-----------+---------+--------+------------+--------+------------+----------------+--------+
| Roxy       | Sen       | Mumbai  | Mumbai | Maharastra | 234567 |  987654321 | Roxy@gmail.com | friend |
| Akash      | Barik     | kochi   | thiru  | kerla      | 123456 | 1234567890 | bdj@abc.com    | friend |
+------------+-----------+---------+--------+------------+--------+------------+----------------+--------+
2 rows in set (0.00 sec)