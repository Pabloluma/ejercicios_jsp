<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="post">
		<label>Número:</label><br> <input type="number" name="numero"
			min="1" required> <input type="submit" value="Enviar">
	</form>
	<%if(request.getParameter("numero") == null){ %>
	<p></p>
	<%}else{ 
		int num = Integer.parseInt(request.getParameter("numero"));
		int suma = 0;
    	// Realiza un bucle desde 1 hasta el numero indicado y +1 para que tambien pase por ese numero ya que en el for each siempre se queda 1 numero antes del ultimo
		for (int i=1; i < num+1; i++) { 
    		suma += i;
		}%>
	<p><%=suma%></p>
	<%}%>
</body>
</html>