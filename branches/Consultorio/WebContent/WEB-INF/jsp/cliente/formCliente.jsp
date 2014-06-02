<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1 style="text-align: center; margin-bottom: 30px;">Adicionar Novo Cliente</h1>	
		
		<form class="form-horizontal" role="form" action="adiciona" method="post"
			 style="width: 90%; margin-left: 5%">
			<input id="id" type="hidden" name="cliente.id" value="${cliente.id}" /> 
			<div class="form-group">
				<label for="nome" class="col-sm-1 control-label">Nome:</label> 
				<div class="col-sm-5">
					<input id="nome" type="text" name="cliente.nome"
						class="form-control" value="${cliente.nome}"  /> 
				</div>
			
				<label for="email" class="col-sm-1 control-label">E-mail:</label> 
				<div class="col-sm-3">
					<input id="email" type="email" name="cliente.email"
						class="form-control" value="${cliente.email}" /> 
				</div>
			</div>
			<div class="form-group">
				<label for="endereco" class="col-sm-1 control-label">Endereço:</label> 
				<div class="col-sm-3">
					<input id="endereco" type="text" name="cliente.endereco" 
						class="form-control" value="${cliente.endereco}"/> 
				</div>
				<label for="numero" class="col-sm-1 control-label">Número:</label> 
				<div class="col-sm-1">
					<input id="numero" type="text" name="cliente.numero" 
						class="form-control" value="${cliente.numero}" /> 
				</div>
				<label for="bairro" class="col-sm-1 control-label">Bairro:</label> 
				<div class="col-sm-3">
					<input id="bairro" type="text" name="cliente.bairro"
						class="form-control" value="${cliente.bairro}" />
				</div>
			</div>
			<div class="form-group">
				<label for="cidade" class="col-sm-1 control-label">Cidade:</label> 
				<div class="col-sm-2">
					<input id="cidade" type="text" name="cliente.cidade"
						class="form-control" value="${cliente.cidade}" /> 
				</div>
				<label for="estado" class="col-sm-1 control-label">Estado:</label> 
				<div class="col-sm-2">	
					<input id="estado" type="text" name="cliente.estado"
						class="form-control" value="${cliente.estado}" /> 
				</div>
				<label for="sexo" class="col-sm-1 control-label">Sexo:</label> 	
				<c:choose>
  					<c:when test="${cliente.sexo == 'F'}">
    					<label class="radio-inline">
    						<input id="sexo" type="radio" name="cliente.sexo" value="M" /> Masculino
    					</label>
    					<label class="radio-inline">
  							<input id="sexo" type="radio" name="cliente.sexo" value="F" checked="checked"/> Feminino 
  						</label>
  					</c:when>
  					<c:otherwise>
  						<label class="radio-inline">
  							<input id="sexo" type="radio" name="cliente.sexo" value="M" checked="checked"/> Masculino 
    					</label>
    					<label class="radio-inline">
    						<input id="sexo" type="radio" name="cliente.sexo" value="F" /> Feminino   		
 			 			</label>
 			 		</c:otherwise>
				</c:choose>
			</div>
			<div class="form-group">
				<label for="fone1" class="col-sm-1 control-label">Fone 1:</label> 
				<div class="col-sm-2">
					<input id="fone1" type="text" name="cliente.fone1" 
						class="form-control" value="${cliente.fone1}" /> 
				</div>
				<label for="fone2" class="col-sm-1 control-label">Fone 2:</label> 
				<div class="col-sm-2">
					<input id="fone2" type="text" name="cliente.fone2" 
						class="form-control" value="${cliente.fone2}" /> 
				</div>
				<label for="nascimento" class="col-sm-2 control-label">Data de Nascimento:</label>
				<div class="col-sm-2">	
					<input id="nascimento" type="date" name="cliente.nascimento" 
						class="form-control" value="${cliente.nascimento}"/>
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