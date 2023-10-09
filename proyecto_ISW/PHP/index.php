<?php
include('sesiones/login.php'); // Includes Login Script
 
if(isset($_SESSION['login_user_sys'])){
header("location: ../perfil/perfil.php");
}
?>
<!DOCTYPE HTML>
<html>
<head>
    <title>Inicio de Sesión</title>
    <!-- Enlace a Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Estilo personalizado */
        .login-container {
            margin-top: 100px; /* Ajusta la distancia desde la parte superior según tus preferencias */
        }
        .btn-main {
            background-color: #007BFF;
            color: #fff;
        }
        .btn-main:hover {
            background-color: #0056b3;
            color: #fff;
        }
        .btn-secondary {
            background-color: #6c757d;
            color: #fff;
        }
        .btn-secondary:hover {
            background-color: #545b62;
            color: #fff;
        }
    </style>
</head>
<body>
<div class="container login-container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header bg-info text-white">
                    Iniciar Sesión
                </div>
                <div class="card-body">
                    <form action="#" method="post">
                        <div class="form-group">
                            <label for="username">Correo electrónico:</label>
                            <input type="text" class="form-control" id="username" name="username" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Contraseña:</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-main">Ingresar</button>
                        <br><br>
                        <a href="sesiones/registro.php" class="btn btn-secondary">Regístrate</a>
                    </form>
                    <span><?php echo $error; ?></span>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Enlace a Bootstrap JS y jQuery (opcional) si necesitas funcionalidad adicional -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

