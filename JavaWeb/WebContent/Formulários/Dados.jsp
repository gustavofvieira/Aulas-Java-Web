<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
String pais = request.getParameter("pais");
out.print("Seu País é: "+pais+"<br/>");

String sexo = request.getParameter("sexo");
out.print("Seu sexo é: "+sexo+"<br/>");

String[] linguas = request.getParameterValues("linguas");// passa parameter values pq são vários valores

for(String lingua : linguas){//foreach
	out.print("Voce fala: "+lingua+"<br/>");
}
%>
</body>
</html>