<!--
Brad Wells
3/19/19
CIS 247.2261
Assignment 4
This is a used book store site using PHP/ MySQL to build, search, and display the database of books using the MVC model.
-->

<?
require('../Model/database.php');
require('../Model/book_db.php');
require('../index.php');
require('../display_books/action.php');
require('../view/header.php');
?>
<!DOCTYPE html>
<html>
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
		<th>Sellable</th>
	</tr>
	<tr>
	<?php foreach ($books as $book) :?>
		<!--<td><?php echo $book['book_id']; ?></td>-->
		<td id="title"><?php echo $book['book_title']; ?></td>
		<td id="author"><?php echo $book['book_author_first']; ?></td>
		<td id="author"><?php echo $book['book_author_last']; ?></td>
		<!--<td><?php echo $book['book_edition']; ?></td>-->
		<td><?php echo $book['book_isbn']; ?></td>
		<td><?php echo $book['book_condition']; ?></td>
		<!--<td id="left"><?php echo $book['book_description']; ?></td>-->
		<td><?php echo $book['book_binding']; ?></td>
		<td><?php echo $book['book_date_published']; ?></td>
		<td id="left"><?php echo $book['book_comments']; ?></td>
		<td><?php echo $book['book_price']; ?></td>
		<td><?php echo $book['book_sellable']; ?></td>
	</tr>
	<?php endforeach; ?>
</table>




</div>
</html>
<?php include '../view/footer.php'; ?>