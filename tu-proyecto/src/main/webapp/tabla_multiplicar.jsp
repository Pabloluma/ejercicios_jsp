<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="Actividad7" method="post">
		<label>Número:</label><br> <input type="number" name="numero"
			min="1" max="9" required> <input type="submit" value="Enviar">
	</form>
	<%ArrayList<Integer> list = (ArrayList<Integer>)request.getAttribute("lista");
	
	if(list != null){
		int valor = 0;
		int numTabla = (Integer)request.getAttribute("numTabla");
		for(int i=0;i<list.size();i++){
			valor = list.get(i);%>
	<p><%=numTabla %>*<%=i+1%> = <%=valor %></p>
			
		<%}
	}
	%>
</body>
</html>