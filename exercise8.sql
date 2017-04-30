Exercise 8
List how many phones were landlines, cellular and fax for entries with birthdates between October 1950 and October 1960


answer

mysql> SELECT Phone.subtype, COUNT(*) From Phone JOIN Entry ON Entry.id = Phone.entryID WHERE birthday > '1950-10' AND birthday < '1960-10' GROUP BY Phone.subtype;
+----------+----------+
| subtype  | COUNT(*) |
+----------+----------+
| landline |      170 |
| cellular |      138 |
| fax      |      134 |
+----------+----------+
3 rows in set, 2 warnings (0.01 sec)

or

mysql> SELECT Phone.subtype, count(*) FROM Phone
    ->     JOIN Entry ON Phone.entryId = Entry.id
    ->     where Entry.birthday >= "1950-10-01" and Entry.birthday < "1960-10-01"
    ->     GROUP BY Phone.subtype;
    
    

if we were to do it like the below, we wont get the subtype printed out. So it is better to do it like the above. 

mysql> SELECT COUNT(Phone.subtype) FROM Phone JOIN Entry ON Phone.entryId = Entry.id WHERE birthday > '1950-10' AND birthday < '1960-10' GROUP BY Phone.subtype;
+----------------------+
| COUNT(Phone.subtype) |
+----------------------+
|                  170 |
|                  138 |
|                  134 |
+----------------------+
3 rows in set, 2 warnings (0.01 sec)