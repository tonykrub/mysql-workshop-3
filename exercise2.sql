Exercise 2

Bulk import data from the source files into decodemtl_addressbook:

data/import-account.sql

data/import-addressbook.sql

data/import-entry.sql


answer

mysql> source data/import-account.sql;
Query OK, 10 rows affected (0.02 sec)

mysql> source data/import-addressbook.sql;

mysql> source data/import-entry.sql;


