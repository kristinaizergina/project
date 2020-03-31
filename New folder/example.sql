/*1.Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.
 * Сделано*/
/*2.Создайте базу данных example, разместите в ней таблицу users, 
состоящую из двух столбцов, числового id и строкового name.*/
create database example; -- создание базы данных
use example;
create table if not exists users(
	id INT unsigned,
	name VARCHAR(255)
); -- создание таблицы users
select * from users;

/*3.Создайте дамп базы данных example из предыдущего задания, 
разверните содержимое дампа в новую базу данных sample.*/
C:\Program Files\MySQL\MySQL Server 5.5\bin>mysqldump example >example.sql -- создание дампа базы данных example
C:\Program Files\MySQL\MySQL Server 5.5\bin>mysql sample <example.sql -- разворачивание дампа в базу данных sample 

/*4. (по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump. 
Создайте дамп единственной таблицы help_keyword базы данных mysql. 
Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.*/
C:\Program Files\MySQL\MySQL Server 5.5\bin>mysqldump --where="true limit 100" mysql help_keyword >help_keyword.sql
C:\Program Files\MySQL\MySQL Server 5.5\bin>mysql sample <help_keyword.sql
