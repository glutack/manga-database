<html>

<head>
	<title>Actualizar manga</title>
	<link rel="stylesheet" type="text/css" href="../css/estiloTabla.css" />
</head>

<body style="text-align:center" background="../img/fondo.png">
	<div id="fondo" class="fuente">

		<?php
		require_once("servidor.php");

		error_reporting(0); //esto está feo, pero el update funciona bien, es para quitar el error que aparece por 'géneros', que si no se actualiza ese dato
		//aparece, pero si lo actualizas no

		if ($_POST['tituloBuscado'] != "" && ($_POST['leido'] != "" || $_POST['coleccion'] != "" || $_POST['titulo'] != "" || $_POST['autor'] != "" || $_POST['demo'] != "" || $_POST['genero'] != "" || $_POST['inicio'] != "" || $_POST['iniciolectura'] != "" || $_POST['finlectura'] != "" || $_POST['capitulo'] != "" || $_POST['introTexto'] != "")) {

			$query = "UPDATE datos SET ";

			if ($_POST['leido'] != null && $_POST['leido'] != "" && isset($_POST['leido'])) {
				$query .= "leido='" . $_POST['leido'] . "',";
			}

			if ($_POST['coleccion'] != null && $_POST['coleccion'] != "" && isset($_POST['coleccion'])) {
				$query .= "coleccion='" . $_POST['coleccion'] . "',";
			}

			if ($_POST['titulo'] != null && $_POST['titulo'] != "" && isset($_POST['titulo'])) {
				$query .= "titulo='" . $_POST['titulo'] . "',";
			}

			if ($_POST['autor'] != null && $_POST['autor'] != "" && isset($_POST['autor'])) {
				$query .= "autor='" . $_POST['autor'] . "',";
			}

			if ($_POST['demo'] != null && $_POST['demo'] != "" && isset($_POST['demo'])) {
				$query .= "demo='" . $_POST['demo'] . "',";
			}

			if ($_POST['genero'] != null && $_POST['genero'] != "" && isset($_POST['genero'])) {
				$genero1 = implode(', ', $_POST['genero']);
				$query .= "genero='" . $genero1 . "',";
			}

			if ($_POST['inicio'] != null && $_POST['inicio'] != "" && isset($_POST['inicio'])) {
				$query .= "inicio='" . $_POST['inicio'] . "',";
			}

			if ($_POST['iniciolectura'] != null && $_POST['iniciolectura'] != "" && isset($_POST['iniciolectura'])) {
				$query .= "iniciolectura='" . $_POST['iniciolectura'] . "',";
			}

			if ($_POST['finlectura'] != null && $_POST['finlectura'] != "" && isset($_POST['finlectura'])) {
				$query .= "finlectura='" . $_POST['finlectura'] . "',";
			}

			if ($_POST['capitulo'] != null && $_POST['capitulo'] != "" && isset($_POST['capitulo'])) {
				$query .= "capitulo='" . $_POST['capitulo'] . "',";
			}

			if ($_POST['introTexto'] != null && $_POST['introTexto'] != "" && isset($_POST['introTexto'])) {
				$query .= "introTexto='" . $_POST['introTexto'] . "',";
			}

			$query = substr($query, 0, -1);
			$query .= " WHERE titulo='" . $_POST['tituloBuscado'] . "'";


//Estoy intentando todavía que ponga bien cuántos datos se han actualizado, que siempre pone 1 
			if ($conn->query($query)) {
				if ($conn->affected_rows > 0) {
					header('refresh:2;url=../html/update.html');
					echo '<a href="../html/update.html"><img src="../img/bien.png" id="volver"/></a>';
					echo "<fieldset class='mensajes'>
					<h3>Todo ha ido bien, se han actualizado " . $conn->affected_rows . " datos.</h3>
					</fieldset>";
				} else {
					echo '<a href="../html/update.html"><img src="../img/volver.png" id="volver"/></a>';
					echo "<fieldset class='mensajes'>
					<h3>Título no encontrado.</h3>
					</fieldset>";
				}
			} else {
				echo '<a href="../html/update.html"><img src="../img/volver.png" id="volver"/></a>';
				echo "<fieldset class='mensajes'>
				<h3>Algo ha ido mal, el manga no se ha actualizado.</h3>
				</fieldset>";
			}
		} else {
			echo '<a href="../html/update.html"><img src="../img/volver.png" id="volver"/></a>';
			echo "<fieldset class='mensajes'>
			<h3>Debes introducir el título del manga y algún dato nuevo.</h3>
			</fieldset>";
		}

		$conn->close();
		?>
	</div>
</body>

</html>