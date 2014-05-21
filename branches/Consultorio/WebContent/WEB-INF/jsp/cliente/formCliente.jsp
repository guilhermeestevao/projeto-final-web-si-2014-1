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
			<legend>Cliente</legend>
			
			<input id="id" type="hidden" name="cliente.id" value="${cliente.id}" /> 
			
			<label for="nome">Nome:</label> 
			<input id="nome" type="text" name="cliente.nome" value="${cliente.nome}"  /> 
			
			<label for="email">E-mail:</label> 
			<input id="email" type="email" name="cliente.email" value="${cliente.email}" /> 
			 
			<label for="endereco">Endereço:</label> 
			<input id="endereco" type="text" name="cliente.endereco" value="${cliente.endereco}"/> 
			
			<label for="numero">Número:</label> 
			<input id="numero" type="text" name="cliente.numero" value="${cliente.numero}" /> 
			
			<label for="bairro">Bairro:</label> 
			<input id="bairro" type="text" name="cliente.bairro" value="${cliente.bairro}" />
			
			<label for="cidade">Cidade:</label> 
			<input id="cidade" type="text" name="cliente.cidade" value="${cliente.cidade}" /> 
			
			<label for="estado">Estado:</label> 
			<input id="estado" type="text" name="cliente.estado" value="${cliente.estado}" /> 
			
			<label for="fone1">Fone 1:</label> 
			<input id="fone1" type="text" name="cliente.fone1" value="${cliente.fone1}" /> 
			
			<label for="fone2">Fone 2:</label> 
			<input id="fone2" type="text" name="cliente.fone2" value="${cliente.fone2}" /> 
			
			<label for="sexo">Sexo:</label> 
			
			
			<c:choose>
  				<c:when test="${cliente.sexo == 'F'}">
    				Masculino <input id="sexo" type="radio" name="cliente.sexo" value="M" />		
  					Feminino  <input id="sexo" type="radio" name="cliente.sexo" value="F" checked="checked"/> 
  				</c:when>
  				<c:otherwise>
  					Masculino <input id="sexo" type="radio" name="cliente.sexo" value="M" checked="checked"/>
    				Feminino  <input id="sexo" type="radio" name="cliente.sexo" value="F" /> 		
 			 	</c:otherwise>
			</c:choose>
			
			<br>
	
			<label for="nascimento">Data de Nascimento:</label>
			<input id="nascimento" type="date" name="cliente.nascimento" value="${cliente.nascimento}"/>
		
			<button type="submit">Enviar</button>
			 
		</fieldset>
	</form>
</body>
</html>