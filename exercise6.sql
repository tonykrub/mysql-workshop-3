Exercise 6: List all of the phone numbers for Jenkins, Charlotte


answer

mysql> SELECT Phone.content FROM Phone JOIN Entry ON Phone.entryId = Entry.id WHERE firstName = 'Charlotte' AND lastName = 'Jenkins';
+----------------+
| content        |
+----------------+
| (110) 167-3420 |
| (605) 175-1334 |
+----------------+
2 rows in set (0.00 sec)

or 

mysql> SELECT Phone.content, Entry.firstName, Entry.lastName FROM Phone JOIN Entry ON Entry.id = Phone.entryId WHERE firstName = 'Charlotte' AND lastName = 'Jenkins';
+----------------+-----------+----------+
| content        | firstName | lastName |
+----------------+-----------+----------+
| (110) 167-3420 | Charlotte | Jenkins  |
| (605) 175-1334 | Charlotte | Jenkins  |
+----------------+-----------+----------+
2 rows in set (0.00 sec)

or

    SELECT Phone.content FROM Phone
    JOIN Entry ON Phone.entryId = Entry.id
    where Entry.firstName= 'Charlotte' and Entry.lastName= 'Jenkins';