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
			<legend>Cadastro de procedimento</legend>
			
			<input id="nome" type="hidden" name="procedimento.id" value="${procedimento.id}" /> 
			
			<label for="nome">Nome:</label> 
			<input id="nome" type="text" name="procedimento.nome" value="${procedimento.nome}"  /> 
		
			<label for="descricao">Descrição:</label>
     		<textarea id="descricao" name="procedimento.descricao">${procedimento.descricao}</textarea>
		
			<label for="nome">Tempo médio para o procedimento:</label> 
			<input id="nome" type="time" name="procedimento.tempoMedio" value="${procedimento.tempoMedio}"  /> 
			
			<button type="submit">Enviar</button>
			
		</fieldset>
	</form>

</body>
</html>