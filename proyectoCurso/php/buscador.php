<html>

<head>
	<title>Buscador</title>
	<link rel="stylesheet" type="text/css" href="../css/estiloTabla.css" />
</head>

<body style="text-align:center" background="../img/fondo.png">
	<div id="fondo" class="fuente">
		<a href="../html/buscador.html"><img src="../img/volver.png" id="volver" /></a>


		<?php
		require_once("servidor.php");

		$query = "SELECT * FROM datos WHERE ";
	
	//al usar el like para no tener que meter un dato exacto he perdido el poder buscar varios elementos a la vez,
	//lo he dejado así por ahora porque prefiero la funcionalidad de no tener que escribir algo exactamente a buscar
	//varias cosas a la vez, pero está en proceso también

		if (isset($_POST['leido']) && $_POST['leido'] != null && $_POST['leido'] != "") {
			$query .= "leido='" . $_POST['leido'] . "' AND";
		}

		if (isset($_POST['coleccion']) && $_POST['coleccion'] != null && $_POST['coleccion'] != "") {
			$query .= "coleccion='" . $_POST['coleccion'] . "' AND";
		}

		if (isset($_POST['titulo']) && $_POST['titulo'] != null && $_POST['titulo'] != "") {
			$query .= "titulo LIKE '%" . $_POST['titulo'] . "%' AND";
		}


		if (isset($_POST['autor']) && $_POST['autor'] != null && $_POST['autor'] != "" && isset($_POST['autor'])) {
			$query .= "autor LIKE '%" . $_POST['autor'] . "%' AND";
		}


		if (isset($_POST['demo']) && $_POST['demo'] != null && $_POST['demo'] != "") {
			$query .= "demo='" . $_POST['demo'] . "' AND";
		}

		if (isset($_POST['genero']) && $_POST['genero'] != null && $_POST['genero'] != "") {
			$genero1 = implode(', ', $_POST['genero']);
			$query .= "genero LIKE '%" . $genero1 . "%' AND";
		}

		if (isset($_POST['inicio']) && $_POST['inicio'] != null && $_POST['inicio'] != "") {
			$query .= "inicio='" . $_POST['inicio'] . "' AND";
		}

		if (isset($_POST['iniciolectura']) && $_POST['iniciolectura'] != null && $_POST['iniciolectura'] != "") {
			$query .= "iniciolectura='" . $_POST['iniciolectura'] . "' AND";
		}

		if (isset($_POST['finlectura']) && $_POST['finlectura'] != null && $_POST['finlectura'] != "") {
			$query .= "finlectura='" . $_POST['finlectura'] . "' AND";
		}


		$query = substr($query, 0, -3);


		if ($result = $conn->query($query)) {
			echo "<h3>Se han devuelto " . $result->num_rows . " resultados.</h3>";


			echo "<div class='table-container'><table style='text-align:center' class='regis'";

			echo "<thead><tr>";
			echo "<th style='width:20px;'>LEÍDO</th>";
			echo "<th style='width:20px;'>COLECCIÓN</th>";
			echo "<th style='width:350px;'>TÍTULO</th>";
			echo "<th style='width:200px;'>AUTOR</th>";
			echo "<th style='width:20px;'>DEMOGRAFÍA</th>";
			echo "<th style='width:270px;'>GÉNERO</th>";
			echo "<th style='width:20px;'>PUBLICACIÓN</th>";
			echo "<th style='width:90px;'>INICIO LECTURA</th>";
			echo "<th style='width:90px;'>FIN LECTURA</th>";
			echo "<th style='width:20px;'>CAPÍTULO</th>";
			echo "<th style='width:300px;'>MÁS</th>";
			echo "</tr></thead>";

			while ($fila = $result->fetch_assoc()) {
				echo "<tbody><tr>";
				foreach ($fila as $elemento) {
					echo "<td>" . $elemento . "</td>";
				}
				echo "</tr></tbody>";
			}
			echo "</table></div>";
		} else {
			echo "<fieldset class='mensajes'>
			<h3>Sólo puedes elegir un parámetro de búsqueda.</h3>
			</fieldset>";
		}

		$conn->close();

		?>
	</div>
</body>

</html>