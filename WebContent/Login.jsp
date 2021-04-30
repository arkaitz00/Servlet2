<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Tienda Arkaitz</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="login">
		<h1>Login</h1>
	    <form method="post" action="Login">
	    	<input type="text" name="usuario" placeholder="Username"/>
	        <input type="password" name="password" placeholder="Password"/>
	        <button type="submit" class="btn btn-primary btn-block btn-large">Iniciar Sesion</button>
	        <br>
	    </form>
	    <form method="post" action="Registro.jsp">
	    	<button type="submit" class="btn btn-primary btn-block btn-large" name="registrate">Registrate</button>
	    </form>
	</div>
	<%@ include file="Footer.jsp" %>
</body>
</html>