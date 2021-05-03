<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="main.java.model.entities.*, main.java.model.dao.*, main.java.controller.*, main.java.utils.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<%  //Objeto para sacar la fecha
	    LocalDateTime fechaActual = LocalDateTime.now();
		String mes = MetodosUtiles.mes(fechaActual.getMonthValue());
	%>
	<div class="Nav">
	  	<h1 style="text-align:center;">Bienvenido a la tienda de Arkaitz</h1>
	  	<table style="margin-left:30%">
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
		  	<td>
		  		<form method="post" action="CerrarSesion">
		  			<button type="submit" class="btn btn-primary btn-block" name="listaRoles">Cerrar Sesion</button>
		  		</form>
		  	</td>
	  	</tr>
	  </table>	  
	  <p style="text-align:center">Bienvenido ${sessionScope.nombreUsuario}. Ultima sesion iniciada: <%= fechaActual.getDayOfMonth() + " de " + mes + " de " + fechaActual.getYear() %> 
		a las <%= fechaActual.getHour()+":"+fechaActual.getMinute()%></p>
  	  <p style="text-align:center">Su rol es ${sessionScope.rolUsuario}.</p>
	  </div>
</body>
</html>