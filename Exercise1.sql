Exercise 1

Reflect the data model shown in schema/addressbook_normalized.png within database decodemtl_addressbook

Account.id is a primary auto-increment key

AddressBook.id is a primary auto-increment key

Entry.id is a primary auto-increment key

Entry.type is an ENUM column permitting phone, address and electronic-mail

Address.id is a primary auto-increment key

Address.type is an ENUM column permitting home, work and other

ElectronicMail.id is a primary auto-increment key

ElectronicMail.type is an ENUM column permitting home, work and other

Phone.id is a primary auto-increment key

Phone.type is an ENUM column permitting home, work and other

Phone.subtype is an ENUM column permitting landline, cellular and fax

mysql> create database decodemtl_addressbook;
Query OK, 1 row affected (0.00 sec)

mysql> show databases;
+-----------------------+
| Database              |
+-----------------------+
| information_schema    |
| c9                    |
| decodemtl_addressbook |
| mysql                 |
| performance_schema    |
| phpmyadmin            |
+-----------------------+
6 rows in set (0.00 sec)

mysql> use decodemtl_addressbook
Database changed
mysql> CREATE TABLE Account (id INT auto_increment primary key, email varchar(255), password varchar(40), createdOn datetime, modifiedOn datetime);
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE AddressBook (id INT auto_increment primary key, accountId INT, name varchar(255), createdOn datetime, modifiedOn datetime);
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE Entry (id INT auto_increment primary key, addressBookId INT, firstName varchar(255), lastName varchar(255), birthday datetime, type ENUM('phone', 'address', 'electronic-mail'));
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE Phone (id INT auto_increment primary key, entryId INT, type ENUM('home', 'work', 'other'), subtype ENUM('landline', 'cellular', 'fax'), content varchar(255));
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE Address (id INT auto_increment primary key, entryId INT, type ENUM('home', 'work', 'other'), addressLine1 varchar(255), addressLine2 varchar(255), city varchar(255), province varchar(128), country varchar(128), postalCode varchar(10));
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE ElectronicMail (id INT auto_increment primary key, entryId INT, type ENUM('home', 'work', 'other'), content varchar(255));
Query OK, 0 rows affected (0.02 sec)

mysql> show tables;
+---------------------------------+
| Tables_in_decodemtl_addressbook |
+---------------------------------+
| Account                         |
| Address                         |
| AddressBook                     |
| ElectronicMail                  |
| Entry                           |
| Phone                           |
+---------------------------------+
6 rows in set (0.00 sec)