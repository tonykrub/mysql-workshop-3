Exercise 7

List all possible domain name values for ElectronicMail (email@domain.name)


answer

mysql> SELECT SUBSTRING_INDEX(content,'@',-1) FROM ElectronicMail GROUP BY SUBSTRING_INDEX(content,'@',-1);
or 
mysql> SELECT SUBSTRING_INDEX(content,'@',-1) FROM ElectronicMail GROUP BY SUBSTRING_INDEX(content,'@',-1) ORDER BY SUBSTRING_INDEX(content,'@',-1);
//for more info on SUBSTRING_INDEX, read http://www.w3resource.com/mysql/string-functions/mysql-substring_index-function.php 
// use "-1", so that it will count on the right of the "@" sign. Anything after the right of the "@" sign will be counted as one. 
// we use the word 'content' and it is not inside a quote (as shown in the answer) because in the ElectronicMail table, the emails are refered to as content. Pls look at the ElectronicMail table for reference. 
// we need to add GROUP BY at the end because if we only use 'SELECT SUBSTRING_INDEX(content,'@',-1) FROM ElectronicMail;' or use ORDER BY instead (SELECT SUBSTRING_INDEX(content,'@',-1) FROM ElectronicMail ORDER BY SUBSTRING_INDEX(content,'@',-1);), we will also get the domains that are duplicated. but we only want to list all possible domains (not including the duplicated ones). That is why we added 'GROUP BY' also.

or
select distinct substring_index(content, '@', -1) from ElectronicMail;


