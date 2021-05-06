<%@page import="main.java.utils.MetodosUtiles"%>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="main.java.model.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Tienda Arkaitz</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="js/script.js"></script>
<style>
	/* Made with love by Mutiullah Samim*/



html,body{
background-image: url("images/bg-Registro.jpg");
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
}

.container{
height: 100%;
align-content: center;
}

.card{
height: 370px;
margin-top: auto;
margin-bottom: auto;
width: 400px;
background-color: rgba(0,0,0,0.5) !important;
}

.social_icon span{
font-size: 60px;
margin-left: 10px;
color: #FFC312;
}

.social_icon span:hover{
color: white;
cursor: pointer;
}

.card-header h3{
color: white;
}

.social_icon{
position: absolute;
right: 20px;
top: -45px;
}

.input-group-prepend span{
width: 50px;
background-color: #FFC312;
color: black;
border:0 !important;
}

input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;

}

.remember{
color: white;
}

.remember input
{
width: 20px;
height: 20px;
margin-left: 15px;
margin-right: 5px;
}

.login_btn{
color: black;
background-color: #FFC312;
width: 100px;
}

.login_btn:hover{
color: black;
background-color: white;
}

.links{
color: white;
}

.links a{
margin-left: 4px;
}
.hidden{
	display: none;
}
</style>
</head>	
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card" style="height:750px">
			<div class="card-header">
				<h3>Registro</h3>
			</div>
			<div class="card-body">
				<form id="registro" method="post" action="AltaUsuario">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text">&#128231;</span>
						</div>
						<input id="email" type="email" class="form-control" placeholder="Email" name="email" onblur="validarCampos(this.id)" required>
					</div>				
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text">&#128273;</span>
						</div>
						<input id="password" type="password" class="form-control" placeholder="Contraseña" name="password" onblur="validarCampos(this.id)" required>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text">&#128100;</span>
						</div>
						<input id="usuario" type="text" class="form-control" placeholder="Usuario" name="usuario" onblur="validarCampos(this.id)" required>
					</div>					
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text">&#128100;</span>
						</div>
						<input id="apellido1" type="text" class="form-control" placeholder="Primer apellido" name="apellido1" onblur="validarCampos(this.id)">
					
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text">&#128100;</span>
						</div>
						<input id="apellido2" type="text" class="form-control" placeholder="Segundo apellido" name="apellido2" onblur="validarCampos(this.id)">
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text">&#127969;</span>
						</div>
						<input id="direccion" type="text" class="form-control" placeholder="Direccion" name="direccion" onblur="validarCampos(this.id)">
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text">&#127984;</span>
						</div>
						<%
							Provincia[] listadoProvincias = MetodosUtiles.leerProvincias();  
						%>	
						<select id="provincias"  name="provincia" class="form-select" aria-label="Default select example" onchange="filtrarMunicipios()">
							<option value="escogerProvincia" placeholder="" selected>Elige una provincia...</option>
						<%
							for(Provincia provincia: listadoProvincias){								
						%>
								<option id="<%= provincia.getId() %>" name="<%= provincia.getId() %>" value="<%= provincia.getNombre() %>"><%= provincia.getNombre() %></option>
						<%
							}
						%>						
						</select>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text">&#128725;</span>
						</div>
						<%
							Municipio[] listadoMunicipios = MetodosUtiles.leerMunicipios();  
						%>	
						<select id="municipios" class="form-select" aria-label="Default select example" style="width: 61.8%">
							<option value="escogerMunicipio" selected>Elige un munipio...</option>
						<%
							for(Municipio municipio: listadoMunicipios){								
						%>
						 <option class="hidden" id="<%= municipio.getId() %>" value="<%= municipio.getNombre() %>"><%= municipio.getNombre() %></option>
						<%
							}
						%>	
						</select>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text">&#9742;</span>
						</div>
						<input id="telefono" type="text" class="form-control" placeholder="Numero de telefono" name="telefono" onblur="validarCampos(this.id)">
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text">&#128179;</span>
						</div>
						<input id="dni" type="text" class="form-control" placeholder="Dni" name="dni" onblur="validarCampos(this.id)" required>
					</div>
					<div class="form-group">
						<input id="btnRegistro" type="submit" value="Registrate" class="btn float-right" style="background-color: #FFC312;">
					</div>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					¿Ya tienes cuenta? <a href="Login.jsp">Inicia sesion aquí</a>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>