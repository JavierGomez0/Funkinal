<%-- 
    Document   : login
    Created on : 22/07/2025, 15:44:58
    Author     : acord
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>IniciarSesion - Funkinal</title>
    <link rel="stylesheet" href="style/login.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
  </head>
  <body>
    <div class="login-container">
      <h2>Iniciar Sesión</h2>
      <form action="LoginServlet" method="post">
        <label for="email">Correo electrónico:</label>
        <input type="email" id="email" name="email" required placeholder="ejemplo@correo.com">

        <label for="password">Contraseña:</label>
        <input type="password" id="password" name="password" required placeholder="********">

        <button type="submit">Ingresar</button>
      </form>
      <p>¿No tienes cuenta? Crea una aqui --> <a href="register.jsp">Registrarse</a></p>
    </div>
  </body>
</html>


