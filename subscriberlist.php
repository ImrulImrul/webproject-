<?php
include 'server.php';
$query="select * from subscriber";
$result=mysqli_query($con,$query);
?>
<!DOCTYPE html>
<html>
<head>
<style>
#subscriber {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 80%;
  margin-left:120px;
}

#subscriber td, #subscriber th {
  border: 1px solid #ddd;
  padding: 8px;
}

#subscriber tr:nth-child(even){background-color: #f2f2f2;}

#subscriber tr:hover {background-color: #ddd;}

#subscriber th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;text-align:center;
}
body{
	background-color: #ffccff;
}
button{
	color: red; -webkit-transform: scale(1.05);
}
</style>
</head>
<body>
<table align="center"  style="width=600px" >
<tr>
    <th><h2>Subscriber List</h2></th>
  </tr>
<table id="subscriber">
  <tr>
    <th>ID</th>
    <th>Email</th>
	<th>Action</th>
  </tr>
  <?php
    while($rows=mysqli_fetch_assoc($result)){
	      echo"
		       <tr>
    <td>".$rows['id']."</td>
    <td>".$rows['email']."</td>
	<td><a href='subscriberdelete.php?idn=$rows[id]' onclick='return checkdelete()'><button>Delete</button></a></td>
    </tr>
		  ";
		  
	}
  ?>
</table>
</table>

<script>
function checkdelete(){
	return confirm('Are you sure want to delete');
}
</script>

</body>
</html>