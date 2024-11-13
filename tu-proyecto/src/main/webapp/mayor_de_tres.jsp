<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		<label>Numero 1:</label> <input type="number" name="num1"> <br>
		<label>Numero 2:</label> <input type="number" name="num2"> <br>
		<label>Numero 3:</label> <input type="number" name="num3">
		<button type="submit">Enviar</button>
	</form>
	<%
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String num3 = request.getParameter("num3");
	int mayor = 0;
	if(num1!=null && num2!= null && num3!= null){
		int num1_int = Integer.parseInt(num1);
		int num2_int = Integer.parseInt(num2);
		int num3_int = Integer.parseInt(num3);
		
		mayor = num1_int;

		if (num2_int > mayor) {
			mayor = num2_int;
		}

		if (num3_int > mayor) {
			mayor = num3_int;
		}
	%>
	<p><%=mayor%></p>
	<%}else{%>
	<p></p>
	<%} %>


</body>
</html>