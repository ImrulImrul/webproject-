<?php
	$conn = new PDO( 'mysql:host=localhost;dbname=web', 'root', '');
	if(!$conn){
		die("Fatal Error: Connection Failed!");
	}
?>