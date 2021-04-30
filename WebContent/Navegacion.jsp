<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="Nav">
	  	<h1 style="text-align:center;">Bienvenido a la tienda de Arkaitz</h1>
	  	<table style="margin-left:35%">
	  	<tr>
	  		<td>
	  			<form method="post" action="Bienvenido.jsp">
	  				<button type="submit" class="btn btn-primary btn-block" name="inicio">Inicio</button>
	  			</form>
	  		</td>
	  		<td>
			  	<form method="post" action="Registro.jsp">
			  		<button type="submit" class="btn btn-primary btn-block" name="registrateU">Registrar Usuario</button>
			  	</form>
		  	</td>
		  	<td>
			  	<form method="post" action="VistaRol.jsp">
			  		<button type="submit" class="btn btn-primary btn-block" name="registrateR">Registrar Rol</button>
			  	</form>
		  	</td>
		  	<td>
		  		<form method="post" action="ListaUsuarios">
			  		<button type="submit" class="btn btn-primary btn-block" name="listaUsuarios">Listar usuarios</button>
			  	</form>
		  	</td>
		  	<td>
		  		<form method="post" action="ListaRoles">
			  		<button type="submit" class="btn btn-primary btn-block" name="listaRoles">Listar roles</button>
			  	</form>
		  	</td>
	  	</tr>
	  </table>
	  </div>
</body>
</html>