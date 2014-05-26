<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="adiciona" method="post">
	
		<fieldset>
			<legend>Marcar consulta</legend>
			<input id="id" type="hidden" name="consulta.id" value="${consulta.id}" /> 
			
			<label for="nome">Pasciente:</label> 
			<input id="nome" type="text" name="cliente.nome" value="${consulta.cliente}"  /> 
			
			<br>
			
			<button type="submit">Enviar</button>
		</fieldset>
	
	</form>

</body>
</html>