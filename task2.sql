
mysql> create database library;
Query OK, 1 row affected (0.01 sec)

mysql> use library;
Database changed
mysql> create table library(  BookID INT PRIMARY KEY AUTO_INCREMENT,
    ->     Title VARCHAR(100),
    ->     Author VARCHAR(100),
    ->     Genre VARCHAR(50),
    ->     Year INT,
    ->     Copies INT );
Query OK, 0 rows affected (0.02 sec)

mysql> select * from library;
Empty set (0.00 sec)

mysql> describe library;
+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| BookID | int          | NO   | PRI | NULL    | auto_increment |
| Title  | varchar(100) | YES  |     | NULL    |                |
| Author | varchar(100) | YES  |     | NULL    |                |
| Genre  | varchar(50)  | YES  |     | NULL    |                |
| Year   | int          | YES  |     | NULL    |                |
| Copies | int          | YES  |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+
6 rows in set (0.01 sec)

mysql> INSERT INTO library (Title, Author, Genre, Year, Copies)
    -> VALUES
    -> ('The Alchemist', 'Paulo Coelho', 'Fiction', 1988, 5),
    -> ('To Kill a Mockingbird', 'Harper Lee', 'Classic', 1960, 3),
    -> ('The Theory of Everything', 'Stephen Hawking', 'Science', 2002, 4),
    -> ('Wings of Fire', 'A.P.J. Abdul Kalam', 'Autobiography', 1999, 2),
    -> ('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 6);
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0


mysql> select * from library;
+--------+--------------------------+-----------------+---------------+------+--------+
| BookID | Title                    | Author          | Genre         | Year | Copies |
+--------+--------------------------+-----------------+---------------+------+--------+
|      1 | The Alchemist            | Paulo Coelho    | Fiction       | 1988 |      5 |
|      2 | To Kill a Mockingbird    | Harper Lee      | Classic       | 1960 |      3 |
|      3 | The Theory of Everything | Stephen Hawking | Science       | 2002 |      4 |
|      4 | Wings of Fire            | Naveen          | Autobiography | 1999 |      2 |
|      5 | The Hobbit               | J.R.R. Tolkien  | Fantasy       | 1937 |      6 |
+--------+--------------------------+-----------------+---------------+------+--------+
5 rows in set (0.00 sec)
