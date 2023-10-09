<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Interfaz de Red</title>
    <!-- Enlace a Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Enlace al archivo CSS personalizado -->
    <link href="../assets/css/style.css" rel="stylesheet">
</head>
<body>
    <h1>Interfaz de Red</h1>
    <div id="contenedor">
        <!-- Ventana de comandos y configuraciones a la izquierda -->
        <div id="configuracion">
            <h2>Comandos y Configuraciones</h2>
            <textarea id="ventanaComandos" rows="10"></textarea>
            <button class="btn btn-primary mt-3" onclick="ejecutarComando()">Ejecutar</button>
        </div>
        
        <!-- Área de salida a la derecha -->
        <div id="salida">
            <h2>Salida</h2>
            <div id="resultado"></div>
        </div>
		
    </div>

    <script>
        // Función para ejecutar un comando y mostrar el resultado en el área de salida
        function ejecutarComando() {
            var comando = document.getElementById("ventanaComandos").value;
            // Aquí puedes realizar alguna lógica o procesamiento con el comando
            // Por ejemplo, aquí simplemente mostramos el comando en el área de salida
            document.getElementById("resultado").textContent = "Comando ejecutado: " + comando;
        }
    </script>

    <!-- Enlace a Bootstrap JS y jQuery (opcional) si necesitas funcionalidad adicional -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
