<!--
Brad Wells
3/19/19
CIS 247.2261
Assignment 4
This is a used book store site using PHP/ MySQL to build, search, and display the database of books using the MVC model.
-->

<?
require('../model/database.php');
require('../model/book_db.php');
require('../index.php');
?>
<!DOCTYPE html>
<div id="main">

<table>
	<tr>
		<!--<th>Book ID#</th>-->
		<th>Book Title</th>
		<th>Author First</th>
		<th>Author Last</th>
		<!--<th>Edition</th>-->
		<th>ISBN</th>
		<th>Condition</th>
		<!--<th>Description</th>-->
		<th>Binding</th>
		<th>Date Published</th>
		<th>Comments</th>
		<th>Price</th>
		<!--<th>Sellable</th>-->
	</tr>
</table>
</div>