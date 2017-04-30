Exercise 10
Transform all work emails into home emails and vice versa. BE CAREFUL ;)

Answer
mysql> UPDATE ElectronicMail // for more information on the 'UPDATE syntax', visit http://dev.mysql.com/doc/refman/5.7/en/update.html 
    -> SET type = case   // here we need SET type because we are changing the field 'type' of the table.
    -> WHEN type = 'work' THEN 'home'
    -> WHEN type = 'home' THEN 'work'
    -> else 'other'    // we also need to have else statement here because if we don't put else here the other kinds of 'type' will be changed to 'null'. In this case we also have the type 'other'. If we don't put else here, 'other' will be changed to 'null'.
    -> END;
Query OK, 2300 rows affected (0.02 sec)
Rows matched: 2300  Changed: 2300  Warnings:  0
// for more information on 'CASE', visit  https://dev.mysql.com/doc/refman/5.7/en/case.html

another way to write this is as below;
update ElectronicMail set type = (case when type = 'work' then 'home' when type = 'home' then 'work' else 'other' end);