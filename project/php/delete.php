<html>

<head>
	<title>Eliminar manga</title>
	<link rel="stylesheet" type="text/css" href="../css/estiloTabla.css" />
</head>

<body style="text-align:center" background="../img/fondo.png">
	<div id="fondo" class="fuente">

		<?php
		require_once("servidor.php");

		$query = "DELETE FROM datos WHERE titulo='" . $_POST['titulo'] . "'";


		if ($conn->query($query)) {
			if ($conn->affected_rows>0) {
				header('refresh:2;url=../html/delete.html');
				echo '<a href="../html/delete"><img src="../img/bien.png" id="volver"/></a>';
				echo "<fieldset class='mensajes'>
			<h3>Todo ha ido bien, se ha borrado " . $conn->affected_rows . " manga.</h3>
			</fieldset>";
			} else {
				echo '<a href="../html/delete"><img src="../img/volver.png" id="volver"/></a>';
				echo "<fieldset class='mensajes'>
			<h3>La petición ha ido bien, pero no se ha borrado ningún manga.</h3>
			</fieldset>";
			}
		} else {
			echo '<a href="../html/delete"><img src="../img/volver.png" id="volver"/></a>';
			echo "<fieldset class='mensajes'>
		<h3>Algo ha ido mal, manga no borrado.</h3>
		</fieldset>";
		}

		$conn->close();

		?>
	</div>
</body>

</html>