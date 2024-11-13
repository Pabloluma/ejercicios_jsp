<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="Actividad2" method="post">
		<label>Distancia(Km)</label> 
		<input type="text" name="distancia"> 
		<br>
		<label>Velocidad Promedio(Km/h)</label> 
		<input type="text" name="velocidad"> 
		<br>
		<button type="submit">Enviar</button>
	</form>
	<%double tiempo = (double) request.getAttribute("tiempo");%>
	<p><%="Tardará: " + tiempo + "Horas"%></p>
</body>
</html>