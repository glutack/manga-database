<html>

<head>
	<title>Añadir manga</title>
	<link rel="stylesheet" type="text/css" href="../css/estiloTabla.css" />
</head>

<body style="text-align:center" background="../img/fondo.png">
	<div id="fondo" class="fuente">

		<?php
		require_once("servidor.php");

		$genero1 = implode(', ', $_POST['genero']);

		$query = "INSERT INTO datos VALUES('" . $_POST['leido'] . "','" . $_POST['coleccion'] . "','" . $_POST['titulo'] . "','" . $_POST['autor'] . "','" . $_POST['demo'] . "','" . $genero1 . "','" . $_POST['inicio'] . "','" . $_POST['iniciolectura'] . "','" . $_POST['finlectura'] . "','" . $_POST['capitulo'] . "','" . $_POST['introTexto'] . "')";
		

		if ($conn->query($query)) {
			header('refresh:2;url=../html/insertar.html');
			echo '<a href="../html/insertar.html"><img src="../img/bien.png" id="volver"/></a>';
			echo "<fieldset class='mensajes'><h3>Todo ha ido bien, manga añadido.</h3></fieldset>";
		}else {
			echo '<a href="../html/insertar.html"><img src="../img/volver.png" id="volver"/></a>';
			echo "<fieldset class='mensajes'>
			<h3>Algo ha ido mal, el manga no se ha añadido.</h3>
			echo $query 
			</fieldset>";
		}

		$conn->close();
		?>
	</div>
</body>

</html>