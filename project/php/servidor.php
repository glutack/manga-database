<?php
	
	$conn=mysqli_connect("localhost","root","","manga");  
	
	if($conn->connect_error){
		echo "<h1>Error al conectar a la base de datos</h1>";
		exit;
	}
?>