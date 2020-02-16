/*
Brad Wells
3/19/19
CIS 247.2261
Assignment 4
This is a used book store site using PHP/ MySQL to build, search, and display the database of books using the MVC model.
*/

-- DROP DATABASE IF EXISTS asg4;
-- CREATE DATABASE asg4;
-- USE asg4;

CREATE TABLE condition_table(
	condition_id		INT				NOT NULL	AUTO_INCREMENT,
	condition_type		VARCHAR(25)		NOT NULL,
	PRIMARY KEY (condition_id)
	
);

CREATE TABLE binding_table(
	binding_id			INT				NOT NULL	AUTO_INCREMENT,
	binding_type		VARCHAR(25)		NOT NULL,
	PRIMARY KEY (binding_id)
);




CREATE TABLE book(
	book_id 			INT		 		NOT NULL 	AUTO_INCREMENT,
	book_title 			VARCHAR(50) 	NOT NULL,
	book_author_last 	VARCHAR(50) 	NOT NULL,
	book_author_first 	VARCHAR(50) 	NOT NULL,
	book_edition 		INT	,		
	book_isbn 			VARCHAR(20), 	
	book_condition		INT 			NOT NULL,
	book_description 	VARCHAR(200),	
	book_binding 		INT 			NOT NULL,
	book_date_published DATE 			NOT NULL,
	book_comments TEXT,					
	book_price 			DECIMAL(10,2)  NOT NULL,
	book_sellable 		TINYINT(1) 	   NOT NULL 	DEFAULT 0,
	PRIMARY KEY (book_id)
	-- FOREIGN KEY (book_condition)	    REFERENCES condition_table(condition_id),
	-- FOREIGN KEY (book_binding) 			REFERENCES binding_table()
	
);


INSERT INTO condition_table VALUES
(1,'New'),
(2,'Used'),
(3,'Poor');

INSERT INTO binding_table VALUES
(1, 'Hard Cover'),
(2, 'Paperback'),
(3, 'Spiral'),
(4,	'Digital');


INSERT INTO book VALUES
(1,'A Catskill Eagle','Parker','Robert',1, 0764526413 ,2,'There she engages a 
relationship with a wealthy heir, Russell Costigan. The story begins with her 
letter.',2, '1985-05-01','Best Seller',24.99,1),

(3, 'Cabbages and Kings', 'Henry', 'O', 3, '456787574', 1, 'It takes its title 
from the poem \"The Walrus and the Carpenter\", featured in Lewis Carroll\'s 
Through the Looking Glass. ', 2, '1904-12-17', 'It was inspired by the characters 
and situations that O. Henry encountered in Honduras in the late 1890s.', '29.99', 0),

(4, 'A Darkling Plain', 'Reeve', ' Philip ', 1, '12121245555', 2, 'Theo Ngoni has 
returned to Zagwa and rejoined his family.', 1, '2006-01-01', 'The title is derived 
from Matthew Arnold\'s poem Dover Beach. ', '12.99', 1),

(5, 'Acidity', 'Paracha', 'Nadeem', 1, NULL, 1, 'A controversial cult favorite 
among many young Pakistanis and Indians.', 1, '2003-00-00', 'Written exclusively 
for the website Chowk.com ', '7.99', 1),

(6, 'Blood Music', 'Bear', 'Greg', 4, '0-87795-720-7', 1, 'In the novel, renegade 
biotechnologist Vergil Ulam creates simple biological computers based on his own 
lymphocytes. ', 2, '1985-01-04', 'The book\'s structure is titled \"inter-phase\", 
\"prophase\", \"metaphase\", \"anaphase\", \"telophase\", and \"interphase\". 
This mirrors the major phases of cell cycle: interphase and mitosis.', '12.99', 0),


(7, 'The Hydrogen Sonata', 'Banks', 'Iain', 1, '978-0356501505', 2, 'The Gzilt, 
a civilisation that almost joined the Culture 10,000 years before the novel, have 
decided to Sublime, leaving behind “the Real” to take up residence in higher 
dimensions. ', 4, '2012-10-04', 'Banks\' last science fiction novel, as he died 
of gall bladder cancer in June 2013.[4]', '19.99', 1),

(8, 'The Midwich Cuckoos', 'Wyndham', 'John', 5, NULL, 3, 'It tells the tale of 
an English village in which the women become pregnant by brood parasitic aliens.',
3, '1957-05-08', 'Famously branded a \"cosy catastrophe\" by Brian Aldiss.', '5.99', 1),
 
(9, 'The Drawing of the Dark', 'Powers', 'Tim', 2, '0-345-43081-6', 3, 'The year is 1529, 
and Brian Duffy, a world-weary Irish mercenary soldier, is hired in Venice by the mysterious 
Aurelianus to go to Vienna and work as a bouncer at the Zimmerman Inn, former monastery a', 
2, '1979-01-01', NULL, '4.99', 0);




GRANT SELECT, INSERT, UPDATE, DELETE
ON *
TO mgs_user@localhost
IDENTIFIED BY 'pa55word';