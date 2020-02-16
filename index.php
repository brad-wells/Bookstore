<!--
Brad Wells
3/19/19
CIS 247.2261
Assignment 4
This is a used book store site using PHP/ MySQL to build, search, and display the database of books using the MVC model.
-->


<?php include 'view/header.php';?>

<main>

	  
	<form action="display_books/action.php" method="post">
	
	  <div id="search">
	    <label>Search:</label>
		<input type="text" id="searchbox" name="book_title" placeholder="Search by Title, Author, Keyword, or ISBN">
	 
	  
	  <div id="search_button">
		<label>&nbsp;</label>
		<input type="submit" id="rotate" value=&#9906>
	  </div>
	  
	  
	   </div>
	</form>
</main>

