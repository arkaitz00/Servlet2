<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="main.java.model.entities.*, main.java.model.dao.*, main.java.controller.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<%! //Metodo para sacar el nombre del mes
		public String mes(int numeroMes){
			String mes = "";
			switch(numeroMes){
				case 1 :
					mes = "Enero";
				break;
				case 2 :
					mes = "Febrero";
				break;
				case 3 :
					mes = "Marzo";
				break;
				case 4 :
					mes = "Abril";
				break;
				case 5 :
					mes = "Mayo";
				break;
				case 6 :
					mes = "Junio";
				break;
				case 7 :
					mes = "julio";
				break;
				case 8 :
					mes = "Agosto";
				break;
				case 9 :
					mes = "Septiembre";
				break;
				case 10 :
					mes = "Octubre";
				break;
				case 11 :
					mes = "Noviembre";
				break;
				case 12 :
					mes = "Diciembre";
				break;
			}
			return mes;
		}
	%>
	<%  //Objeto para sacar la fecha
	    LocalDateTime fechaActual = LocalDateTime.now();
	%>
	<%! //Metodo para sacar el nombre del rol
		public String nombreRol(int idRol){
			String nombreRol = "";
			switch(idRol){
				case 1:
					nombreRol = "Admin";
				break;
				case 2:
					nombreRol = "Empleado";
				break;
				case 3:
					nombreRol = "Cliente";
				break;
				case 4:
					nombreRol = "Gerente";
				break;
			}
			return nombreRol;
		}
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
	  <p style="text-align:center">Bienvenido ${sessionScope.nombreUsuario}. Ultima sesion iniciada: <%= fechaActual.getDayOfMonth() + " de " + mes(fechaActual.getMonthValue()) + " de " + fechaActual.getYear() %> 
		a las <%= fechaActual.getHour()+":"+fechaActual.getMinute()%></p>
  	  <p style="text-align:center">Su rol es ${sessionScope.rolUsuario}.</p>
	  </div>
</body>
</html>