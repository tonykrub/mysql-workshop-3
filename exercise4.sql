Exercise 4

List all of the first names for AddressBook.name="Pharetra Ut Limited"

answer

mysql> SELECT firstName, AddressBook.name FROM Entry JOIN AddressBook ON Entry.addressBookId = AddressBook.id WHERE AddressBook.name = 'Pharetra Ut Limited';
// we also put SELECT AddressBook.name above (instead of just the first name) so that we will also get the name of the addressbook in the table (as per the table below). 
// we JOIN where Entry.addressBookId = AddressBook.id because the addressbook ID of the Entry (in the Entry table) needs to be the same as the ID of the address book (in the AddressBook table.).

+-------------+---------------------+
| firstName   | name                |
+-------------+---------------------+
| Zelenia     | Pharetra Ut Limited |
| Abdul       | Pharetra Ut Limited |
| Idola       | Pharetra Ut Limited |
| Illana      | Pharetra Ut Limited |
| Winifred    | Pharetra Ut Limited |
| Buckminster | Pharetra Ut Limited |
| Heidi       | Pharetra Ut Limited |
| Nell        | Pharetra Ut Limited |
| Ciara       | Pharetra Ut Limited |
| Sylvia      | Pharetra Ut Limited |
| Caryn       | Pharetra Ut Limited |
| Dieter      | Pharetra Ut Limited |
| Jamalia     | Pharetra Ut Limited |
| Herrod      | Pharetra Ut Limited |
| Unity       | Pharetra Ut Limited |
| Pascale     | Pharetra Ut Limited |
| Colton      | Pharetra Ut Limited |
| Jamal       | Pharetra Ut Limited |
| Abel        | Pharetra Ut Limited |
| Zena        | Pharetra Ut Limited |
| Prescott    | Pharetra Ut Limited |
| Idona       | Pharetra Ut Limited |
| Paloma      | Pharetra Ut Limited |
| Neve        | Pharetra Ut Limited |
| Kyla        | Pharetra Ut Limited |
| Kimberley   | Pharetra Ut Limited |
| Jillian     | Pharetra Ut Limited |
| Addison     | Pharetra Ut Limited |
| Jacqueline  | Pharetra Ut Limited |
| Sasha       | Pharetra Ut Limited |
| Lee         | Pharetra Ut Limited |
| Salvador    | Pharetra Ut Limited |
| Yoko        | Pharetra Ut Limited |
| Stacy       | Pharetra Ut Limited |
| Halee       | Pharetra Ut Limited |
| Blythe      | Pharetra Ut Limited |
| Tad         | Pharetra Ut Limited |
| Haley       | Pharetra Ut Limited |
| Lara        | Pharetra Ut Limited |
| Summer      | Pharetra Ut Limited |
| Latifah     | Pharetra Ut Limited |
| Faith       | Pharetra Ut Limited |
| Stacey      | Pharetra Ut Limited |
| Jennifer    | Pharetra Ut Limited |
| Fulton      | Pharetra Ut Limited |
| Colin       | Pharetra Ut Limited |
| Thane       | Pharetra Ut Limited |
| Caryn       | Pharetra Ut Limited |
| Bo          | Pharetra Ut Limited |
| Jamal       | Pharetra Ut Limited |
| Amena       | Pharetra Ut Limited |
| Melanie     | Pharetra Ut Limited |
| Driscoll    | Pharetra Ut Limited |
| Gareth      | Pharetra Ut Limited |
| Colt        | Pharetra Ut Limited |
| Martha      | Pharetra Ut Limited |
| Sierra      | Pharetra Ut Limited |
| Nita        | Pharetra Ut Limited |
| Celeste     | Pharetra Ut Limited |
| Kathleen    | Pharetra Ut Limited |
| Samuel      | Pharetra Ut Limited |
| Aaron       | Pharetra Ut Limited |
| Cheyenne    | Pharetra Ut Limited |
| Brett       | Pharetra Ut Limited |
| Rebekah     | Pharetra Ut Limited |
+-------------+---------------------+
65 rows in set (0.01 sec)
