<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
		<form action="adiciona" method="post">
		<fieldset>
			<legend>Adicionar Novo Dentista</legend>
			
			<label for="nome">Nome:</label> 
			<input id="nome" type="text" name="dentista.nome" /> 
			
			<label for="email">E-mail:</label> 
			<input id="email" type="email" name="dentista.email" /> 
			 
			<label for="endereco">Endereço:</label> 
			<input id="endereco" type="text" name="dentista.endereco" />
			
			<label for="endereco">CRO:</label> 
			<input id="endereco" type="text" name="dentista.cro" /> 
			
			<label for="numero">Número:</label> 
			<input id="numero" type="text" name="dentista.numero" /> 
			
			<label for="bairro">Bairro:</label> 
			<input id="bairro" type="text" name="dentista.bairro" />
			
			<label for="cidade">Cidade:</label> 
			<input id="cidade" type="text" name="dentista.cidade" /> 
			
			<label for="estado">Estado:</label> 
			<input id="estado" type="text" name="dentista.estado" /> 
			
			<label for="fone1">Fone 1:</label> 
			<input id="fone1" type="text" name="dentista.fone1" /> 
			
			<label for="fone2">Fone 2:</label> 
			<input id="fone2" type="text" name="dentista.fone2" /> 
			
			<label for="assistente">Assistente:</label>   
			<select id="assistente" name="dentista.assistente.id">
				<c:forEach items="${assistente}" var="assistente">
					<option value="${assistente.id}	">${assistente.nome}</option>
				</c:forEach>
			</select>
			
			<label for="sexo">Sexo:</label> 
			Masculino <input id="sexo" type="radio" name="dentista.sexo" value="M" checked="checked"/> 
			Feminino  <input id="sexo" type="radio" name="dentista.sexo" value="F" /> 
			<br>
			
			<label for="nascimento">Data de Nascimento:</label>
			<input id="nascimento" type="date" name="dentista.nascimento"/>
		
			<button type="submit">Enviar</button>
			 
		</fieldset>
	</form>
</body>
</html>