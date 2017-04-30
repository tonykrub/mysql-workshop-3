Exercise 5

List all of the emails associated to AddressBook.id = 100


answer

mysql> SELECT ElectronicMail.content FROM ElectronicMail Join Entry On Entry.id = ElectronicMail.entryID WHERE Entry.addressBookId = 100;
// to do this, we have to find the link between tables. And here there is a link between ElectronicMail table and Entry table where the ElectronicMail table contains the ID of the Entry table (entryID). That is why we JOIN there. 

or below is another way to solve this problem (by JOINING 2 times) 
mysql> SELECT ElectronicMail.content FROM ElectronicMail JOIN Entry ON Entry.id = ElectronicMail.entryId JOIN AddressBook on Entry.addressBookId = AddressBook.id WHERE AddressBook.id = 100;

+--------------------------------------------+
| content                                    |
+--------------------------------------------+
| tortor.dictum@Nulla.org                    |
| malesuada.fames.ac@Sedeu.co.uk             |
| velit@vestibulum.co.uk                     |
| tincidunt.congue.turpis@Inmi.net           |
| vitae.diam@sapienAeneanmassa.com           |
| Nunc.ac@parturientmontesnascetur.com       |
| cursus.vestibulum@pellentesqueSeddictum.ca |
| nibh.Donec.est@nibh.org                    |
| eu.tellus@ipsum.co.uk                      |
| massa.Quisque.porttitor@enimSednulla.edu   |
| mauris.blandit.mattis@Integersemelit.net   |
| eget@viverraMaecenasiaculis.net            |
| vulputate.posuere.vulputate@liberoDonec.ca |
| Nam.tempor@nisimagna.co.uk                 |
+--------------------------------------------+
14 rows in set (0.01 sec)