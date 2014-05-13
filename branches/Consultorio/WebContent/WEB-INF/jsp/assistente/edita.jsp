<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="alterar" method="post">
		<fieldset>
			<legend>Adicionar Novo Administrador</legend>
			
			<label for="nome">ID:</label> 
			<input id="nome" type="hidden" name="assistente.id" value="${assistente.id}" /> 
			
			<label for="nome">Nome:</label> 
			<input id="nome" type="text" name="assistente.nome" value="${assistente.nome}"  /> 
			
			<label for="email">E-mail:</label> 
			<input id="email" type="email" name="assistente.email" value="${assistente.email}" /> 
			 
			<label for="senha">Senha:</label> 
			<input id="senha" type="password" name="assistente.senha" value="${assistente.senha}" />
		 
			<label for="endereco">Endereço:</label> 
			<input id="endereco" type="text" name="assistente.endereco" value="${assistente.endereco}"/> 
			
			<label for="numero">Número:</label> 
			<input id="numero" type="text" name="assistente.numero" value="${assistente.numero}" /> 
			
			<label for="bairro">Bairro:</label> 
			<input id="bairro" type="text" name="assistente.bairro" value="${assistente.bairro}" />
			
			<label for="cidade">Cidade:</label> 
			<input id="cidade" type="text" name="assistente.cidade" value="${assistente.cidade}" /> 
			
			<label for="estado">Estado:</label> 
			<input id="estado" type="text" name="assistente.estado" value="${assistente.estado}" /> 
			
			<label for="fone1">Fone 1:</label> 
			<input id="fone1" type="text" name="assistente.fone1" value="${assistente.fone1}" /> 
			
			<label for="fone2">Fone 2:</label> 
			<input id="fone2" type="text" name="assistente.fone2" value="${assistente.fone2}" /> 
			
			<label for="sexo">Sexo:</label> 
			
			
			<c:choose>
  				<c:when test="${assistente.sexo == 'M'}">
    				Masculino <input id="sexo" type="radio" name="assistente.sexo" value="M" checked="checked"/>		
  					Feminino  <input id="sexo" type="radio" name="assistente.sexo" value="F" /> 
  				</c:when>
  				<c:otherwise>
  					Masculino <input id="sexo" type="radio" name="assistente.sexo" value="M"/>
    				Feminino  <input id="sexo" type="radio" name="assistente.sexo" value="F" checked="checked"/> 		
 			 	</c:otherwise>
			</c:choose>
			
			<br>
	
			<label for="nascimento">Data de Nascimento:</label>
			<input id="nascimento" type="date" name="assistente.nascimento" value="${assistente.nascimento}"/>
		
			<button type="submit">Enviar</button>
			 
		</fieldset>
	</form>

</body>
</html>