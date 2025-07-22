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
    <title>Login - Funkinal</title>
    <link rel="stylesheet" href="style/login.css">
  </head>
  <body>
    <div class="login-container">
      <h2>Iniciar Sesión</h2>
      <form action="LoginServlet" method="post">
        <label for="username">Usuario:</label>
        <input type="text" id="username" name="username" required>

        <label for="password">Contraseña:</label>
        <input type="password" id="password" name="password" required>

        <button type="submit">Ingresar</button>
      </form>
      <p>¿No tienes cuenta? <a href="register.jsp">Regístrate</a></p>
    </div>
  </body>
</html>

