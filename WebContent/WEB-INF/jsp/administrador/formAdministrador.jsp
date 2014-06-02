<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1 style="text-align: center; margin-bottom: 30px;">Adicionar Novo Administrador</h1>	
		
		<form class="form-horizontal" name="form1" role="form" onsubmit="return VAdministrador();" action="adiciona" method="post"
			style="width: 90%; margin-left: 5%">
			<input id="id" type="hidden" name="administrador.id" value="${administrador.id}" /> 
			<div class="form-group">
				<label for="nome" class="col-sm-1 control-label">Nome:</label> 
				<div class="col-sm-3">
					<input id="nome" type="text" name="administrador.nome"
						class="form-control" value="${administrador.nome}"  /> 
				</div>
			
				<label for="email" class="col-sm-1 control-label">E-mail:</label> 
				<div class="col-sm-3">
					<input id="email" type="email" name="administrador.email"
						class="form-control" value="${administrador.email}" /> 
				</div>
			
				<label for="senha" class="col-sm-1 control-label">Senha:</label> 
				<div class="col-sm-2">
					<input id="senha" type="password" name="administrador.senha" 
						class="form-control" value="${administrador.senha}" />
				</div>
			</div>
			<div class="form-group">
				<label for="endereco" class="col-sm-1 control-label">Endereço:</label> 
				<div class="col-sm-3">
					<input id="endereco" type="text" name="administrador.endereco" 
						class="form-control" value="${administrador.endereco}"/> 
				</div>
				<label for="numero" class="col-sm-1 control-label">Número:</label> 
				<div class="col-sm-1">
					<input id="numero" type="text" name="administrador.numero" 
						class="form-control" value="${administrador.numero}" /> 
				</div>
				<label for="bairro" class="col-sm-1 control-label">Bairro:</label> 
				<div class="col-sm-3">
					<input id="bairro" type="text" name="administrador.bairro"
						class="form-control" value="${administrador.bairro}" />
				</div>
			</div>
			<div class="form-group">
				<label for="cidade" class="col-sm-1 control-label">Cidade:</label> 
				<div class="col-sm-2">
					<input id="cidade" type="text" name="administrador.cidade"
						class="form-control" value="${administrador.cidade}" /> 
				</div>
				<label for="estado" class="col-sm-1 control-label">Estado:</label> 
				<div class="col-sm-2">	
					<input id="estado" type="text" name="administrador.estado"
						class="form-control" value="${administrador.estado}" /> 
				</div>
				<label for="sexo" class="col-sm-1 control-label">Sexo:</label> 	
				<c:choose>
  					<c:when test="${assistente.sexo == 'F'}">
    					<label class="radio-inline">
    						<input id="sexo" type="radio" name="administrador.sexo" value="M" /> Masculino
    					</label>
    					<label class="radio-inline">
  							<input id="sexo" type="radio" name="administrador.sexo" value="F" checked="checked"/> Feminino 
  						</label>
  					</c:when>
  					<c:otherwise>
  						<label class="radio-inline">
  							<input id="sexo" type="radio" name="administrador.sexo" value="M" checked="checked"/> Masculino 
    					</label>
    					<label class="radio-inline">
    						<input id="sexo" type="radio" name="administrador.sexo" value="F" /> Feminino   		
 			 			</label>
 			 		</c:otherwise>
				</c:choose>
			</div>
			<div class="form-group">
				<label for="fone1" class="col-sm-1 control-label">Fone 1:</label> 
				<div class="col-sm-2">
					<input id="fone1" type="text" name="administrador.fone1" 
						class="form-control" value="${administrador.fone1}" /> 
				</div>
				<label for="fone2" class="col-sm-1 control-label">Fone 2:</label> 
				<div class="col-sm-2">
					<input id="fone2" type="text" name="administrador.fone2" 
						class="form-control" value="${administrador.fone2}" /> 
				</div>
				<label for="nascimento" class="col-sm-2 control-label">Data de Nascimento:</label>
				<div class="col-sm-2">	
					<input id="nascimento" type="date" name="administrador.nascimento" 
						class="form-control" value="${administrador.nascimento}"/>
				</div>
			</div>
			<div class="form-group">
    			<div class="col-sm-offset-5">
					<button type="submit" class="btn btn-success" 
						style="padding-left: 30px; padding-right: 30px;">Enviar</button>
				</div>
			</div>				 
	</form>

</body>
</html>