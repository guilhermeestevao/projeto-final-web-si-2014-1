<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1 style="text-align: center; margin-bottom: 30px;">Adicionar Novo Procedimento</h1>	
		
	<form class="form-horizontal" role="form" action="adiciona" method="post"
		style="width: 90%; margin-left: 5%">
		<input id="id" type="hidden" name="consulta.id" value="${consulta.id}" /> 
		<div class="form-group">	
			<label for="dentista" class="col-sm-1 control-label">Dentista:</label>
			<label for="dentista" class="control-label col-sm-5" 
				style="font-size: 16px; text-align: left;">${usuarioBean.dentista.nome}</label>  
			<input id="dentista" type="hidden" name="consulta.dentista.id" value="${usuarioBean.dentista.id}" />
		</div>	
		<div class="form-group">
			<label for="cliente" class="col-sm-1 control-label">Paciente:</label> 
			<div class="col-sm-3">
				<select id="cliente" name="consulta.cliente.id" class="form-control">
					<c:forEach items="${cliente}" var="cliente">
						<c:choose>
							<c:when test="${consulta.cliente.id == cliente.id}">
								<option value="${cliente.id}" selected="selected">${cliente.nome}</option>
							</c:when>
							<c:otherwise>
								<option value="${cliente.id}">${cliente.nome}</option>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</select> 
			</div>
			<label for="procedimento" class="col-sm-2 control-label">Procedimento:</label> 
			<div class="col-sm-3">	
				<select id="procedimento" name="consulta.procedimento.id" class="form-control">
					<c:forEach items="${procedimento}" var="procedimento">
						<c:choose>
							<c:when test="${consulta.procedimento.id == procedimento.id}">
								<option value="${procedimento.id}" selected="selected">${procedimento.nome}</option>
							</c:when>
							<c:otherwise>
								<option value="${procedimento.id}">${procedimento.nome}</option>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label for="hora" class="col-sm-2 control-label" style="text-align: left;">Horário da consulta:</label> 
			<div class="col-sm-2">	
				<input id="hora" type="time" name="consulta.hora" 
					class="form-control" value="${consulta.hora}"  />
			</div>	
			<label for="dia" class="col-sm-2 control-label">Dia da consulta:</label> 
			<div class="col-sm-2">	
				<input id="dia" type="date" name="consulta.dia" 
					class="form-control" value="${consulta.dia}"/>
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