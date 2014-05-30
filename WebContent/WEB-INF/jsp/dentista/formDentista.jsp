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
			<input id="id" type="hidden" name="dentista.id" value="${dentista.id}" /> 
			
			<label for="nome">Nome:</label> 
			<input id="nome" type="text" name="dentista.nome" value="${dentista.nome}"  /> 
			
			<label for="email">E-mail:</label> 
			<input id="email" type="email" name="dentista.email" value="${dentista.email}" /> 
			 
			<label for="senha">Senha:</label> 
			<input id="senha" type="password" name="dentista.senha" value="${dentista.senha}" />
		 
			 
			<label for="endereco">Endereço:</label> 
			<input id="endereco" type="text" name="dentista.endereco" value="${dentista.endereco}"/> 
			
			<label for="numero">Número:</label> 
			<input id="numero" type="text" name="dentista.numero" value="${dentista.numero}" /> 
			
			<label for="bairro">Bairro:</label> 
			<input id="bairro" type="text" name="dentista.bairro" value="${dentista.bairro}" />
			
			<label for="cidade">Cidade:</label> 
			<input id="cidade" type="text" name="dentista.cidade" value="${dentista.cidade}" /> 
			
			<label for="estado">Estado:</label> 
			<input id="estado" type="text" name="dentista.estado" value="${dentista.estado}" /> 
			
			<label for="fone1">Fone 1:</label> 
			<input id="fone1" type="text" name="dentista.fone1" value="${dentista.fone1}" /> 
			
			<label for="fone2">Fone 2:</label> 
			<input id="fone2" type="text" name="dentista.fone2" value="${dentista.fone2}" /> 
			
			<label for="cro">CRO:</label> 
			<input id="cro" type="text" name="dentista.cro" value="${dentista.cro}" />
			
			<label for="assistente">Assistente:</label>   
			<select id="assistente" name="dentista.assistente.id">
				<c:forEach items="${assistente}" var="assistente">
						<c:choose>
							<c:when test="${dentista.assistente.id == assistente.id}">
								<option value="${assistente.id}" selected="selected">${assistente.nome}</option>
							</c:when>
							<c:otherwise>
								<option value="${assistente.id}">${assistente.nome}</option>
							</c:otherwise>
						</c:choose>
				</c:forEach>
			</select>
			
			<label for="sexo">Sexo:</label> 
			<c:choose>
  				<c:when test="${dentista.sexo == 'F'}">
    				Masculino <input id="sexo" type="radio" name="dentista.sexo" value="M" />		
  					Feminino  <input id="sexo" type="radio" name="dentista.sexo" value="F" checked="checked"/> 
  				</c:when>
  				<c:otherwise>
  					Masculino <input id="sexo" type="radio" name="dentista.sexo" value="M" checked="checked"/>
    				Feminino  <input id="sexo" type="radio" name="dentista.sexo" value="F" /> 		
 			 	</c:otherwise>
			</c:choose>
			
			<br>
	
			<label for="nascimento">Data de Nascimento:</label>
			<input id="nascimento" type="date" name="dentista.nascimento" value="${dentista.nascimento}"/>
			
			<br>
			
			<button type="submit">Enviar</button>
			 
		</fieldset>
	</form>
</body>
</html>