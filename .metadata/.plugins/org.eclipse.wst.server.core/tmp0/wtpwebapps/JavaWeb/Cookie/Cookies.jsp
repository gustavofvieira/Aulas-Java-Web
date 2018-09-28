<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String nome = request.getParameter("nome");
		if(nome!=null){//se o nome for diferente de nulo � pq ele j� passou pelo cadastro
			Cookie cookie = new Cookie("nomeUsuario",nome);//objeto cookie passa sempre 2 valores por parametro
			// que � o nome unico para cada cokie e o valor que � passado no caso na variavel 
			cookie.setMaxAge(10*2);//passa por parametro o segundo que o cookie fica no browser
			response.addCookie(cookie);// adciona o objeto no browser e salva
		}
		Cookie[] cookies = request.getCookies();// verifica inicialmente se j� existe um cookie  na instancia
		// criasse um vetor para pecorrer o retorno do cookie
		for(Cookie atual: cookies){
			if(atual.getName().equals("nomeUsuario")){
				nome = atual.getValue();// atual � o cookie do foreach que recebe o valor que vem do submit
			}
		}
	
		
		out.print("Bem vindo: "+nome+"<br/>");
	%>
	<img src="img/teste.jpg" />
</body>
</html>