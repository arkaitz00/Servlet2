<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="main.java.model.entities.*, main.java.model.dao.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tienda Arkaitz</title>
</head>
<body>
	<p>Bienvenido ${sessionScope.nombreUsuario}.</p>
	<br>
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
	<p>Ultima sesion iniciada: <%= fechaActual.getDayOfMonth() %> de <%= mes(fechaActual.getMonthValue()) %> de <%= fechaActual.getYear() %> 
	a las <%= fechaActual.getHour()+":"+fechaActual.getMinute() %></p>
</body>
</html>