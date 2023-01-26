<html>

<head>
	<title>Registro de mangas</title>
	<link rel="stylesheet" type="text/css" href="../css/estiloTabla.css" />
</head>

<body style="text-align:center" background="../img/fondo.png">
	<div id="fondo" class="fuente">
		<?php
		require_once("servidor.php");

		$query = "SELECT * FROM datos";

		if ($result = $conn->query($query)) {
			echo '<a href="../menu.html"><img src="../img/volver.png" id="volver"/></a>';
			echo "<h3>Se han devuelto " . $result->num_rows . " resultados</h3>";

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
			echo '<a href="../menu.html"><img src="../img/volver.png" id="volver"/></a>';
			echo "<fieldset class='mensajes'>
			<h3>Algo ha ido mal, no se pueden mostrar los registros.</h3>
			</fieldset>";
		}

		$conn->close();
		?>
	</div>
</body>

</html>