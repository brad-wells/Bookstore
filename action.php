<!--
Brad Wells
3/19/19
CIS 247.2261
Assignment 4
This is a used book store site using PHP/ MySQL to build, search, and display the database of books using the MVC model.
-->

<?php
require('../Model/database.php');
require('../Model/book_db.php');
include('../index.php');

/* ?>
	<script>
	window.onscroll = function(){stick()};
	
	var nav = document.getElementById("top");
	var sticky = nav.offsetTop;
	
	function stick(){
		if (window.pageYOffset >= sticky){
			nav.classList.add("sticky")
		}else{
			nav.classList.remove("sticky");
		}
	}
	</script>
<?php */

$book_search = filter_input(INPUT_POST, 'book_title');
//$found = false;
if ($book_search == NULL || $book_search == FALSE)
{
	?>
	<!DOCTYPE html>
	<html>

	<div id="alert">
	<p>Enter a valid search term!</p>
	</div>
	</html>
	<?php
}
else
{
	//$found = true;
	$books = get_books($book_search);
	include('book_list.php'); 
}
?>
