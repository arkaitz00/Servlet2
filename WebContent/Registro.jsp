<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrate</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="registrarte">
		<h1>Registrarse</h1>
	    <form method="post" action="AltaUsuario">
	    	<input type="text" name="email" placeholder="Email" required="required">
	        <input type="password" name="password" placeholder="Password" required="required" />
	        <input type="text" name="usuario" placeholder="usuario" required="required">
	        <input type="number" name="rol" placeholder="rol" required="required">
	        <input type="text" name="apellido1" placeholder="apellido1">
	        <input type="text" name="apellido2" placeholder="apellido2">
	        <input type="text" name="direccion" placeholder="direccion">
	        <input type="text" name="localidad" placeholder="localidad" >
	        <input type="text" name="provincia" placeholder="provincia">
	        <input type="text" name="telefono" placeholder="telefono">
	        <input type="text" name="dni" placeholder="dni" required="required">
	        <button type="submit" class="btn btn-primary btn-block btn-large">Registrarse</button>
	        <br>
	    </form>
	    <form method="post" action="Login.jsp">
	    	<button type="submit" class="btn btn-primary btn-block btn-large">¡Ya tengo cuenta!</button>
	    </form>
	</div>
	<%@ include file="Footer.jsp" %>
</body>
</html>