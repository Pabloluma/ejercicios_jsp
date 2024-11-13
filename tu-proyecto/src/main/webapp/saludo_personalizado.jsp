<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="Actividad1" method="post">
		<label>Nombre</label> <input type="text" name="nombre"> <br>
		<label>Apellido</label> <input type="text" name="apellido"> <br>
		<button type="submit">Enviar</button>
	</form>
	<%
	String nombre = (String) request.getAttribute("name");
	String apellido = (String) request.getAttribute("apellido");
	if(nombre == null && apellido == null){
	
	%>
	<p></p>
	<%
	}else{
		
	%>
	<p><%="¡Hola " + nombre + " " + apellido + "!"%></p>
	<%}%>
</body>
</html>