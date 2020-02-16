<!--
Brad Wells
3/19/19
CIS 247.2261
Assignment 4
This is a used book store site using PHP/ MySQL to build, search, and display the database of books using the MVC model.
-->

<?php

function get_books($book_search)
{
	
global $db;

$query = "SELECT * FROM book
		 WHERE (book_title LIKE '%$book_search%' OR
		  book_author_last LIKE '%$book_search%' OR
		  book_author_first LIKE '%$book_search%' OR
		  book_isbn LIKE '%$book_search%' OR
		  book_description LIKE '%$book_search%' OR
		  book_comments LIKE '%$book_search%') AND
		  book_sellable = 1; ORDER BY book_title
		 ";
$statement = $db->prepare($query);
$statement->execute();
$books = $statement->fetchAll();
$statement->closeCursor();
return $books;
}

function get_all_books()
{
	global $db;
	$query = 'SELECT * FROM book';
	$statement = $db->prepare($query);
	$statement->execute();
	$books = $statement->fetchAll();
	$statement->closeCursor();
	return $books;
}


function search($book_title)
{
	global $db;
	$query = 'SELECT * FROM book
			  WHERE book_title =:book_title';
	$statement = $db->prepare($query);
	$statement->bindValue(":book_title", $book_title);
	$statement->execute();
	$book = $statement->fetchAll();
	$statement->closeCursor();
	return $statement;
			 
}