<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="Actividad5" method="post">
		<label>Edad:</label><br> <input type="number" name="age" min="1"
			required> <input type="submit" value="Enviar">
	</form>
	<%String categoria = (String) request.getAttribute("categ");
	if(categoria == null){%>
	<p></p>
	<% }else{ %>
	<p><%=categoria%></p>
	<%} %>
</body>
</html>