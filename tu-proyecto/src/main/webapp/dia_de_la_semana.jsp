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
		<label>Numero del dia de la semana</label> 
		<input type="number" name="numero">
		<button type="submit">Enviar</button>
	</form>
	
	<%
	String numero = request.getParameter("numero");
	String dia = "";
	if (numero != null) {
		int num = Integer.parseInt(numero);
		// Agrega el valor del dia que corresponda la variable dia segun el numero.
		
		switch (num) {
		case 1:
			dia = "Lunes";
			break;
		case 2:
			dia = "Martes";
			break;
		case 3:
			dia = "Miércoles";
			break;
		case 4:
			dia = "Jueves";
			break;
		case 5:
			dia = "Viernes";
			break;
		case 6:
			dia = "Sábado";
			break;
		case 7:
			dia = "Domingo";
			break;
		default:
			dia = "No es correcto el numero elegido";
			break;
		}
	}
	%>
	<p><%=dia%></p>
</body>
</html>