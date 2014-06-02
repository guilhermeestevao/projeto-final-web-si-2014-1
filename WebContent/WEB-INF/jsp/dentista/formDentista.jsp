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
	<h1 style="text-align: center; margin-bottom: 30px;">Adicionar Novo Dentista</h1>	
		
		<form class="form-horizontal" role="form" action="adiciona" method="post"
			style="width: 90%; margin-left: 5%;">
			<input id="id" type="hidden" name="dentista.id" value="${dentista.id}" /> 
			<div class="form-group">
				<label for="nome" class="col-sm-1 control-label">Nome:</label> 
				<div class="col-sm-3">
					<input id="nome" type="text" name="dentista.nome"
						class="form-control" value="${dentista.nome}"  /> 
				</div>
			
				<label for="email" class="col-sm-1 control-label">E-mail:</label> 
				<div class="col-sm-3">
					<input id="email" type="email" name="dentista.email"
						class="form-control" value="${dentista.email}" /> 
				</div>
			
				<label for="senha" class="col-sm-1 control-label">Senha:</label> 
				<div class="col-sm-2">
					<input id="senha" type="password" name="dentista.senha" 
						class="form-control" value="${dentista.senha}" />
				</div>
			</div>
			<div class="form-group">
				<label for="endereco" class="col-sm-1 control-label">Endereço:</label> 
				<div class="col-sm-3">
					<input id="endereco" type="text" name="dentista.endereco" 
						class="form-control" value="${dentista.endereco}"/> 
				</div>
				<label for="numero" class="col-sm-1 control-label">Número:</label> 
				<div class="col-sm-1">
					<input id="numero" type="text" name="dentista.numero" 
						class="form-control" value="${dentista.numero}" /> 
				</div>
				<label for="bairro" class="col-sm-1 control-label">Bairro:</label> 
				<div class="col-sm-3">
					<input id="bairro" type="text" name="dentista.bairro"
						class="form-control" value="${dentista.bairro}" />
				</div>
			</div>
			<div class="form-group">
				<label for="cidade" class="col-sm-1 control-label">Cidade:</label> 
				<div class="col-sm-2">
					<input id="cidade" type="text" name="dentista.cidade"
						class="form-control" value="${dentista.cidade}" /> 
				</div>
				<label for="estado" class="col-sm-1 control-label">Estado:</label> 
				<div class="col-sm-2">	
					<input id="estado" type="text" name="dentista.estado"
						class="form-control" value="${dentista.estado}" /> 
				</div>
				<label for="sexo" class="col-sm-1 control-label">Sexo:</label> 	
				<c:choose>
  					<c:when test="${dentista.sexo == 'F'}">
    					<label class="radio-inline">
    						<input id="sexo" type="radio" name="dentista.sexo" value="M" /> Masculino
    					</label>
    					<label class="radio-inline">
  							<input id="sexo" type="radio" name="dentista.sexo" value="F" checked="checked"/> Feminino 
  						</label>
  					</c:when>
  					<c:otherwise>
  						<label class="radio-inline">
  							<input id="sexo" type="radio" name="dentista.sexo" value="M" checked="checked"/> Masculino 
    					</label>
    					<label class="radio-inline">
    						<input id="sexo" type="radio" name="dentista.sexo" value="F" /> Feminino   		
 			 			</label>
 			 		</c:otherwise>
				</c:choose>
			</div>
			<div class="form-group">
				<label for="fone1" class="col-sm-1 control-label">Fone 1:</label> 
				<div class="col-sm-2">
					<input id="fone1" type="text" name="dentista.fone1" 
						class="form-control" value="${dentista.fone1}" /> 
				</div>
				<label for="fone2" class="col-sm-1 control-label">Fone 2:</label> 
				<div class="col-sm-2">
					<input id="fone2" type="text" name="dentista.fone2" 
						class="form-control" value="${dentista.fone2}" /> 
				</div>
				<label for="nascimento" class="col-sm-2 control-label">Data de Nascimento:</label>
				<div class="col-sm-2">	
					<input id="nascimento" type="date" name="dentista.nascimento" 
						class="form-control" value="${dentista.nascimento}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="assistente" class="col-sm-1 control-label">Assistente:</label>
				<div class="col-sm-3">	
					<select id="assistente" name="dentista.assistente.id" class="form-control">
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
				</div>
				<label for="cro" class="col-sm-2 control-label">CRO:</label>
				<div class="col-sm-2">	
					<input id="cro" type="text" name="dentista.cro" 
						class="form-control" value="${dentista.cro}"/>
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