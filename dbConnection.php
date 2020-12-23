<?php
$con = mysqli_connect("localhost","root","","web");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

session_start();
$_SESSION["name"] = 'Admin';
$_SESSION["key"] ='sunny7785068889';






?>