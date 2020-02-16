<!--
Brad Wells
3/19/19
CIS 247.2261
Assignment 4
This is a used book store site using PHP/ MySQL to build, search, and display the database of books using the MVC model.
-->

<?php
	// $dsn = 'mysql:host=localhost;dbname=asg4';
	// $username='root';
	// $password='';
	
	// try
	// {
		// $db = new PDO($dsn, $username, $password);
	// }
	// catch(PDOException $e)
	// {
		// $error_message = $e->getMessage();
		// include('database_error.php');
		// exit();
	// }
	
	
	
  $host_name = 'db5000089532.hosting-data.io';
  $database = 'dbs84234';
  $user_name = 'dbu288521';
  $password = 'Assignment3!';
  $db = null;

  try {
    $db = new PDO("mysql:host=$host_name; dbname=$database;", $user_name, $password);
  } catch (PDOException $e) {
    echo "Error!: " . $e->getMessage() . "<br/>";
    die();
  }

?>