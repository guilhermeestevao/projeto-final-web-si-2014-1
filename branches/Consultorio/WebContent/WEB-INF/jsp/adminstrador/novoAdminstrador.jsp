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
			<legend>Adicionar Novo Administrador</legend>
			
			<label for="nome">Nome:</label> 
			<input id="nome" type="text" name="adminstrador.nome" /> 
			
			<label for="email">E-mail:</label> 
			<input id="email" type="email" name="adminstrador.email" /> 
			 
		
			<label for="senha">Senha:</label> 
			<input id="senha" type="password" name="adminstrador.senha" />
			
		
			<label for="endereco">Endereço:</label> 
			<input id="endereco" type="text" name="adminstrador.endereco" /> 
			
			<label for="numero">Número:</label> 
			<input id="numero" type="text" name="adminstrador.numero" /> 
			
			<label for="bairro">Bairro:</label> 
			<input id="bairro" type="text" name="adminstrador.bairro" />
			
			<label for="cidade">Cidade:</label> 
			<input id="cidade" type="text" name="adminstrador.cidade" /> 
			
			<label for="estado">Estado:</label> 
			<input id="estado" type="text" name="adminstrador.estado" /> 
			
			<label for="fone1">Fone 1:</label> 
			<input id="fone1" type="text" name="adminstrador.fone1" /> 
			
			<label for="fone2">Fone 2:</label> 
			<input id="fone2" type="text" name="adminstrador.fone2" /> 
			
			<label for="sexo">Sexo:</label> 
			Masculino <input id="sexo" type="radio" name="usuario.sexo" value="M" checked="checked"/> 
			Feminino  <input id="sexo" type="radio" name="usuario.sexo" value="F" /> 
			<br>
			<!-- 	
			<label for="nascimento">Data de Nascimento:</label>
			<input id="nascimento" type="date" name="usuario.nascimento"/>
		-->
			<button type="submit">Enviar</button>
			 
		</fieldset>
	</form>

</body>
</html>