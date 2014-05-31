<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="adiciona" method="post">
	
		<fieldset>
			<legend>Marcar consulta</legend>
			<input id="id" type="hidden" name="consulta.id" value="${consulta.id}" /> 
			
			<label for="cliente">Paciente:</label> 
			<select id="cliente" name="consulta.cliente.id">
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
			
			<label for="dentista">Dentista:</label> 
			${usuarioBean.dentista.nome}
			<input id="dentista" type="hidden" name="consulta.dentista.id" value="${usuarioBean.dentista.id}" />
			
			<!--  
			<select id="dentista" name="consulta.dentista.id">
				<c:forEach items="${dentista}" var="dentista">
						<c:choose>
							<c:when test="${consulta.dentista.id == dentista.id}">
								<option value="${dentista.id}" selected="selected">${dentista.nome}</option>
							</c:when>
							<c:otherwise>
								<option value="${dentista.id}">${dentista.nome}</option>
							</c:otherwise>
						</c:choose>
				</c:forEach>
			</select>
			-->
			<label for="procedimento">Procedimento:</label> 
			<select id="procedimento" name="consulta.procedimento.id">
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
			<label for="hora">Horário da consulta:</label> 
			<input id="hora" type="time" name="consulta.hora" value="${consulta.hora}"  />
			<label for="dia">Dia da consulta:</label> 
			<input id="dia" type="date" name="consulta.dia" value="${consulta.dia}"/>
			<br>
			
			<button type="submit">Enviar</button>
		</fieldset>
	
	</form>

</body>
</html>